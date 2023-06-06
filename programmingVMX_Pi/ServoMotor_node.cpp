#include "TitanDriver_ros_wrapper.h"
#include "navX_ros_wrapper.h"
#include "Cobra_ros.h"
#include "Sharp_ros.h"
#include "Servo_ros.h"
#include "Ultrasonic_ros.h"
#include "IOwd_ros.h"
#include "DI_ros.h"
#include "DO_ros.h"
#include <unistd.h>
#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "geometry_msgs/Twist.h"

#include <dynamic_reconfigure/server.h>
#include <vmxpi_ros_bringup/MotorSpeedConfig.h>
#include <vmxpi_ros/Float.h>
#include <cmath>

double servo_angle;

// Returns the angle value set by the Servo motor
void servo_angle_callback(const std_msgs::Float32::ConstPtr& msg)
{
   servo_angle = msg->data;
}

// class ServoController
// {
//    private:
   

//    public:
//     vmxpi_ros::Float msg;
//     ros::ServiceClient setAngle;
//    ros::Subscriber servo_angle_sub;
//     ServoController(ros::NodeHandle *nh){
//     setAngle = nh->serviceClient<vmxpi_ros::Float>("channel/0/servo/set_angle");
//     servo_angle_sub = nh->subscribe("channel/0/servo/angle", 1, servo_angle_callback);
   
//     }

//     void setServoAngle(double Angle)
//     {
//         vmxpi_ros::Float msg;

//         // Setting the servo angle
//         float angle = Angle; //Range -150° - 150°
//         msg.request.data = angle;
//         setAngle.call(msg);
//     }

// };

// Returns the speed of motor 1


int main(int argc, char **argv)
{
   system("/usr/local/frc/bin/frcKillRobot.sh"); //Terminal call to kill the robot manager used for WPILib before running the executable.
   ros::init(argc, argv, "main_node");

   ros::NodeHandle nh; //internal reference to the ROS node that the program will use to interact with the ROS system
   VMXPi vmx(true, (uint8_t)50); //realtime bool and the update rate to use for the VMXPi AHRS/IMU interface, default is 50hz within a valid range of 4-200Hz
   //ros::AsyncSpinner spinner(4);
   ros::AsyncSpinner spinner(4);
   spinner.start(); 
   ros::ServiceClient setAngle;
   ros::Subscriber servo_angle_sub;

   ServoROS servo(&nh, &vmx, 13);


    // Use these to directly access data
   servo.GetAngle(); //returns a double;
   servo.GetMinAngle(); //returns a double
   servo.GetMaxAngle(); //returns a double

   // Using the set_angle service, channel index is declared in the constructor
   setAngle = nh.serviceClient<vmxpi_ros::Float>("channel/13/servo/set_angle");

   // Declaring message type
   vmxpi_ros::Float msg;

   // Setting the servo angle
   
   float angle = 100; //Range -150° - 150°
   msg.request.data = angle;
   setAngle.call(msg);
   
   // Subscribing to Servo angle topic to access the angle data
   servo_angle_sub = nh.subscribe("channel/13/servo/angle", 1, servo_angle_callback); //channel_index is the input channel set in the constructor
    

   ROS_INFO("ROS SHUTDOWN");
   ros::waitForShutdown();
   return 0; 

}



//OOP test node 

#include "TitanDriver_ros_wrapper.h"
#include "navX_ros_wrapper.h"
#include "Cobra_ros.h"
#include "Sharp_ros.h"
#include "Servo_ros.h"
#include "Ultrasonic_ros.h"
#include "IOwd_ros.h"
#include "DI_ros.h"
#include "DO_ros.h"
#include <unistd.h>
#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "geometry_msgs/Twist.h"

#include <dynamic_reconfigure/server.h>
#include <vmxpi_ros_bringup/MotorSpeedConfig.h>
#include <vmxpi_ros/Float.h>
#include <cmath>

double servo_angle;

// Returns the angle value set by the Servo motor
void servo_angle_callback(const std_msgs::Float32::ConstPtr& msg)
{
   servo_angle = msg->data;
}

class ServoController
{
   private:
   

   public:
    vmxpi_ros::Float msg;
    ros::ServiceClient setAngle;
   ros::Subscriber servo_angle_sub;
    ServoController(ros::NodeHandle *nh){
    setAngle = nh->serviceClient<vmxpi_ros::Float>("channel/13/servo/set_angle");
    servo_angle_sub = nh->subscribe("channel/13/servo/angle", 1, servo_angle_callback);
   
    }

    void setServoAngle()
    {
        vmxpi_ros::Float msg;

        // Setting the servo angle
        float angle = 20; //Range -150° - 150°
        msg.request.data = angle;
        setAngle.call(msg);
    }

};




int main(int argc, char **argv)
{
   system("/usr/local/frc/bin/frcKillRobot.sh"); //Terminal call to kill the robot manager used for WPILib before running the executable.
   ros::init(argc, argv, "main_node");

   ros::NodeHandle nh; //internal reference to the ROS node that the program will use to interact with the ROS system
   VMXPi vmx(true, (uint8_t)50); //realtime bool and the update rate to use for the VMXPi AHRS/IMU interface, default is 50hz within a valid range of 4-200Hz
   //ros::AsyncSpinner spinner(4);
   ros::AsyncSpinner spinner(4);
   spinner.start(); 
   ros::ServiceClient setAngle;
   ros::Subscriber servo_angle_sub;

   ServoROS servo(&nh, &vmx, 13);


    // Use these to directly access data
   servo.GetAngle(); //returns a double;
   servo.GetMinAngle(); //returns a double
   servo.GetMaxAngle(); //returns a double

   ServoController srvController(&nh);
   
   ROS_INFO("ROS SHUTDOWN");
   ros::waitForShutdown();
   return 0; 

}
