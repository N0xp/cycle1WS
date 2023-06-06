#include "ros/ros.h"
#include "std_msgs/String.h"

class subscriber_node
{
    private:
       ros::Subscriber listner;
    public:
    subscriber_node(ros::NodeHandle* nh){
        listner = nh->subscribe("tochatter",1000,&subscriber_node::lisner_callback,this);

    }
    void lisner_callback(const std_msgs::String::ConstPtr& msg)
    {
        ROS_INFO("AM listner to [%s]",msg->data.c_str());
    }

};