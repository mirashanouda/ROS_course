#!/usr/bin/env python

import rospy
from pkg_2.msg import message_file

def sensor_callback(sensor_msg):
        rospy.loginfo("Data recived: %d, %s, %.2f, %.2f", sensor_msg.id, sensor_msg.name, sensor_msg.temp, sensor_msg.humidity)

rospy.init_node("sub_sensor_node", anonymous=True)
rospy.Subscriber("sensor_topic", message_file, sensor_callback)
rospy.spin()
