#include "quizpkg/subscriber_node.hpp"

int main(int argc,char** argv)
{
    ros::init(argc,argv,"listner");
    ros::NodeHandle nh;
    subscriber_node sub=subscriber_node(&nh);
    ros::spin();
    return 0;

}