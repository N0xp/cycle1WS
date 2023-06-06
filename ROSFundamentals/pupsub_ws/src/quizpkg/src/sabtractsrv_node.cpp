#include "ros/ros.h"
#include "quizpkg/subtractsrv.h"


bool subtract(quizpkg::subtractsrv::Request& req, quizpkg::subtractsrv::Response& res)
{
    res.sub = req.a-req.b;
    return true;
}

int main(int argc, char** argv)
{
    ros::init(argc,argv,"subtractsrv");
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("subtract_two_int",subtract);
    ros::spin();
}