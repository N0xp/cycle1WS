#include "Sharp_ros.h"


double sharp_dist;

// Returns the distance value reported by the Sharp IR sensor
void sharp_dist_callback(const std_msgs::Float32::ConstPtr& msg)
{
   sharp_dist = msg->data;
}

int main(int argc, char **argv)
{
   system("/usr/local/frc/bin/frcKillRobot.sh"); //Terminal call to kill the robot manager used for WPILib before running the executable.
   ros::init(argc, argv, "sharp_node");

   /**
    * Constructor
    * Sharp's ros threads (publishers and services) will run asynchronously in the background
    */

   ros::NodeHandle nh; //internal reference to the ROS node that the program will use to interact with the ROS system
   VMXPi vmx(true, (uint8_t)50); //realtime bool and the update rate to use for the VMXPi AHRS/IMU interface, default is 50hz within a valid range of 4-200Hz

   ros::Subscriber sharpDist_sub;

   SharpROS sharp(&nh, &vmx, 22);

   //Use these to directly access the data
   double dist_cm = sharp.GetIRDistance(); //converts the average voltage read, outputs the range in cm
   double voltage = sharp.GetRawVoltage(); //returns the average voltage

   // Subscribing to Sharp distance topic to access the distance data
   sharpDist_sub = nh.subscribe("channel/22/sharp_ir/dist", 1, sharp_dist_callback);

   ros::spin(); //ros::spin() will enter a loop, pumping callbacks to obtain the latest sensor data

   return 0;
}