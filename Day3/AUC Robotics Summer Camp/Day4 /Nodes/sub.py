#!/usr/bin/env python		
import rospy
from std_msgs.msg import String

# Topic callback function.
def stringListenerCallback(data):
    rospy.loginfo(' The contents of topic1: &s', data.data)

def stringListener():
    #TODO 

    #inital ros_node with name "node_4"	

    #create Subscriber


    # spin() simply keeps python from exiting until this node is stopped
    
    #END

if __name__ == '__main__':
    stringListener()
