#! /usr/bin/env python

#Full documentation: http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29


import rospy #importing ros library in python
from std_msgs.msg import String #it can be int or float

def callback(msg):
    rospy.loginfo("I hear %s", msg.data)
def listener():
    #creating the node:

    rospy.init_node("sub_node", anonymous=True) # to  the node takes a uniqe name in the machine so even if some nodes have the same name, the program doesn't work well
    #In ROS, nodes are named uniqely. If 2 nodes with the same name are lunched, the previous one is kicked off.
    #ananymos=True makes rospy choose a uniqe name for each node so that multiple nodes can run simultaneously. 
    
    rospy.Subscriber("/myTopic", String, callback) #callback is the function that will be listened
    #the publisher topic should be exactly the same as the subscription topic
    rospy.spin() 
    #Blocks until ROS node is shutdown. 


if __name__ == '__main__':
    listener()


