#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

class publisher_node
{
    private:
        ros::Publisher pub;
         std_msgs::String msg;
            std::stringstream ss;
        
    public:
    publisher_node(ros::NodeHandle *nh){
         pub = nh->advertise<std_msgs::String>("tochatter",1000);
     
    }

    void pubblish_msg()
    {
        
          ss<<"HI mmmmmmmmmmmmmmmm";
            msg.data = ss.str();
            pub.publish(msg);
            ROS_INFO("%s",msg.data.c_str());
            

        
    }
    
};