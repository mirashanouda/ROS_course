#!/usr/bin/env python		
## Node to publish a string topic.
import rospy
from std_msgs.msg import String

def simplePublisher():
    
    #Add Publisher 
    simple_publisher = rospy.Publisher('topic_1', String, queue_size = 10)
    #inital ros_node "node_3"
    rospy.init_node('node_1', anonymous = False)
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
