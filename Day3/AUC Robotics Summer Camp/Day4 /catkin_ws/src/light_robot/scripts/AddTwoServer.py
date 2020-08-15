#!/usr/bin/env python

from light_robot.srv import AddTwoNum
from light_robot.srv import AddTwoNumRequest
from light_robot.srv import AddTwoNumResponse

import rospy

def handle_add_two_ints(req):
    print "Returning [%s + %s = %s]"%(req.x, req.y, (req.x + req.y))
    return AddTwoNumResponse(req.x + req.y)

def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', AddTwoNum, handle_add_two_ints)
    print "Ready to add two ints."
    rospy.spin()
    
if __name__ == "__main__":
    add_two_ints_server()
