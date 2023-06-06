#include "ros/ros.h"
#include "tatrialpkg/AddTwoInit.h"

bool add(tatrialpkg::AddTwoInit::Request &req , tatrialpkg::AddTwoInit::Response &res)
{
    res.sum = req.a+req.b;
    return true;                                                        
}
int main(int argc, char **argv)
{
    ros::init(argc,argv,"Addision_server");
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("adding_two_init",add);
    ros::spin();
}