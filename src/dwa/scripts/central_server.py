#!/usr/bin/env python
import rospy
import numpy as np 

from dwa.srv import GoalRequest, GoalRequestResponse

# information of each robot
class Robot():
	def __init__(self):
		self.map_x = 0.0
		self.map_y = 0.0

class Server():
	def __init__(self):
		print("Server Ready. Initializing goals")
		self.free_robots = []
		self.busy_robots = []
		self.goals = []
		self.completed_goals = []
		self.time_log = []

		rospy.init_node('central_server')
		self.service = rospy.Service('task_assign', GoalRequest, self.assign_task)

	# service call request handling
	def assign_task(self, req):
		res = GoalRequestResponse()
		print(req.bot_name ," requesting for the job")
		if len(self.goals) == 0:
			res.success = False
			print("Goals are empty")
		else:
			goal = self.goals[0]
			res.goal_x = goal[0]
			res.goal_y = goal[1]
			res.success = True
			self.goals.pop(0)
			print("Goal assigned to ", req.bot_name, ": ", goal)
			self.free_robots.remove(req.bot_name)
			self.busy_robots.append(req.bot_name)
			print("Free", self.free_robots)
			print("Busy", self.busy_robots)	
		return res

	# TODO: dynamically update the goals 
	def update_goals(self):
		return

	# TODO: dynamically update the robots
	def update_robots(self):
		return

if __name__ == "__main__":
	server = Server()
	# temp code. To be changed later on
	server.free_robots.append('r1')
	server.goals.append([2.0, 2.0])
	rospy.spin() # keeps your node alive.

