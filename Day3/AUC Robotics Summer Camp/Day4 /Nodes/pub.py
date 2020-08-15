#!/usr/bin/env python		
## Node to publish a string topic.
import rospy
from std_msgs.msg import String

def simplePublisher():
    #TODO

    #Add Publisher 

    #inital ros_node "node_3"

    #END 

    rate = rospy.Rate(10)


# The string to be published on the topic.
    topic1_content = "my first ROS topic"
    while not rospy.is_shutdown():
        simple_publisher.publish(topic1_content)
        rate.sleep()
if __name__== '__main__':
    try:
        simplePublisher()
    except rospy.ROSInterruptException:
        pass
