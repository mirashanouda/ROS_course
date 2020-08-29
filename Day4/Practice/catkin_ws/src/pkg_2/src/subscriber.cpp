#include "ros/ros.h"
#include "std_msgs/String.h"

//Full documentation: http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28c%2B%2B%29 

//Topic messages callback
void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("[Listener] I hear: [%s]\n", msg->data.c_str());

}

int main(int argc, char **argv)
{
    //Initiate a new ROS node named "listener"
    ros::init(argc, argv, "listener_node");
    
    //create a handle: it is reference assigned to a new node
    ros::NodeHandle nh;

    //subscribe to a given topic, in this case "chatter"
    //chatterCallback: is the name of the function that will be executed each time a message is recived.
    ros::Subscriber sub = nh.subscribe("chatter_topic", 1000, chatterCallback); //the publisher topic should be exactly the same as the subscription topic

    //Enter a loop, pumping callbacks
    ros::spin();

    return 0;

}