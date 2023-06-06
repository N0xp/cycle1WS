#include "ros/ros.h"
#include "tatrialpkg/AddTwoInit.h"


int main(int argc, char **argv)
{
    ros::init(argc,argv,"Addision_Clint");
    ros::NodeHandle nh;

    ros::ServiceClient clint = nh.serviceClient<tatrialpkg::AddTwoInit>("adding_two_init");
    tatrialpkg::AddTwoInit srv;
    srv.request.a = 2;
    srv.request.b=5;
    if (clint.call(srv)){
        ROS_INFO("the sum of your integer is: %ld", srv.response.sum);
    
    }
    else 
    {
        ROS_INFO("faied to call the service");
        return 1;
    }
    return 0;
}