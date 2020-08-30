#!/usr/bin/env python

#Full documentation: http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29

import rospy #importing ros library in python
from std_msgs.msg import Int32 #it can be int or float


def talker():
    #creating the node:
    rospy.init_node("pub_counter_node", anonymous=True) 
    #In ROS, nodes are named uniqely. If 2 nodes with the same name are lunched, the previous one is kicked off.
    #ananymos=True makes rospy choose a uniqe name for each node so that multiple nodes can run simultaneously. 

    pub = rospy.Publisher("/countTopic", Int32, queue_size=10) 
    #the publisher topic should be exactly the same as the subscription topic
    #pub is a variable, (name of the topic, .., bufer: stadered 10 but it can be 30)

    rate = rospy.Rate(1)
    #hz: every 1 sec. a message will be sent

    count = 0 
    #this loop is terminated with ctrl C
    while not rospy.is_shutdown(): 
        rospy.loginfo(count) #to print
        pub.publish(count) #to publish
        rate.sleep() #this makes the loop works until ctrl C
        count = count + 1

#starting main function:    
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

#OR: write the function directrly

    