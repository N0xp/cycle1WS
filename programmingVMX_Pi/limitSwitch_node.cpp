int main(int argc, char **argv)
{
   system("/usr/local/frc/bin/frcKillRobot.sh"); //Terminal call to kill the robot manager used for WPILib before running the executable.
   ros::init(argc, argv, "main_node");

   ros::NodeHandle nh; //internal reference to the ROS node that the program will use to interact with the ROS system
   VMXPi vmx(true, (uint8_t)50); //realtime bool and the update rate to use for the VMXPi AHRS/IMU interface, default is 50hz within a valid range of 4-200Hz
   //ros::AsyncSpinner spinner(4);
   ros::AsyncSpinner spinner(4);
   spinner.start(); 
   DigitalInputROS digital_in(&nh, &vmx, 8);

   digital_in.Get(); //Will return true for a high signal and false for a low signal

   //ros::spin() will enter a loop, pumping callbacks to obtain the latest sensor data
   ROS_INFO("ROS SHUTDOWN");
   ros::waitForShutdown();
   return 0; 

}
