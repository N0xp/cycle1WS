#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

class publisher_node
{
    private:
        ros::Publisher pub;
         std_msgs::String msg;
            std::stringstream ss;
        ros::Rate loop_rate;
    public:
    publisher_node(ros::NodeHandle *nh):loop_rate(10){
         pub = nh->advertise<std_msgs::String>("tochatter",10);
         ss<<"HI mmmmmmmmmmmmmmmm";
    }

    void pubblish_msg()
    {
        while(ros::ok){
           
            msg.data = ss.str();
            pub.publish(msg);
            ROS_INFO("%s",msg.data.c_str());
            loop_rate.sleep();
        }
        return;
    }
    
    
};

int main(int argv, char** argc)
{
   
    ros::init(argv,argc,"talker_node");
    ros::NodeHandle nh;
    publisher_node publish=publisher_node(&nh);
    // while(ros::ok()){
    // publish.pubblish_msg();
    // sleeprate.sleep();
    // }
    publish.pubblish_msg();
    return 0;

}