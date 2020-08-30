#include "ros/ros.h"
#include "std_msgs/Int32.h"

//Full documentation: http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28c%2B%2B%29 


int main(int argc, char **argv)
{
	//Initize new ROS node named "talker"
	ros::init(argc, argv, "talker_node");

	//creating a node handle: it is reference assigned to a new node
	ros::NodeHandle nh;

	//create a publisher with a topic "count_topic" that will send a String msg
	// 1000 is the buffer size
	ros::Publisher chatter_publisher = nh.advertise<std_msgs::Int32>("count_topic", 1000);     //the publisher topic should be exactly the same as the subscription topic


	//Rate is a class used to define frequency for a loop.
	ros::Rate loop_rate(1); //msg each 1 sec

	int count = 0;

	while (ros::ok()) //keep spinning loop until user terminate
	{
		//create a new String ROS message:

		std_msgs::Int32 msg; //create a int for the data

		//assign the int data to ROS message data field
		msg.data = count;

		//Print the content of the message in the terminal 
		ROS_INFO("Counter: %d\n", msg.data);

		//Publish the message
		chatter_publisher.publish(msg);

		ros::spinOnce(); //Need to call this function often to allow ROS to process incoming messages
		
		loop_rate.sleep(); //Sleep for the rest of the cycle, to enforce the loop rate
		
		count ++;
	}

	return 0;
}