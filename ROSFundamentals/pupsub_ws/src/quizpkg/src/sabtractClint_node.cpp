#include "ros/ros.h"
#include "quizpkg/subtractsrv.h"


int main(int argc, char **argv)
{
    ros::init(argc,argv,"sabitractclint");
    ros::NodeHandle nh;

    ros::ServiceClient clint = nh.serviceClient<quizpkg::subtractsrv>("subtract_two_int");
    quizpkg::subtractsrv srv;
    srv.request.a = 2;
    srv.request.b=5;
    if (clint.call(srv)){
        ROS_INFO("the sabitract of your integer is: %ld", srv.response.sub);

    }
    else 
    {
        ROS_INFO("faied to call the service");
        return 1;
    }
    return 0;
}