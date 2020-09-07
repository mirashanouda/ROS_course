#!/usr/bin/env python
import rospy
#from <package_name.msg> import <msg_file>
from pkg_2.msg import message_file
import random

rospy.init_node("sensor_publisher_node", anonymous=True) #initialize a new node
pub = rospy.Publisher("sensor_topic", message_file, queue_size=10) #the publisher topic should be exactly the same as the subscription topic
rate = rospy.Rate(1)

i = 0
while not rospy.is_shutdown():
    sensor = message_file()
    sensor.id = 1
    sensor.name = "parking_01"
    sensor.temp = 24.33 + (random.random()*2)
    sensor.humidity = 14.5 + (random.random()*2)
    rospy.loginfo("Publishing: ")
    rospy.loginfo(sensor)
    pub.publish(sensor)
    rate.sleep()
    i = i + 1