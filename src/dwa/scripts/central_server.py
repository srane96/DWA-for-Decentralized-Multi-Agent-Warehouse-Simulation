#!/usr/bin/env python
import rospy
import numpy as np 

from dwa.srv import GoalRequest, GoalRequestResponse, GoalCompletion, GoalCompletionResponse
# information of each robot
class Robot():
	def __init__(self):
		self.map_x = 0.0
		self.map_y = 0.0

class Server():
	def __init__(self):
		print("Server Ready. Initializing goals")
		self.free_robots = ['r1','r2','r3']
		self.busy_robots = []
		#self.goals = [[3, -3],[3, -6],[0,-6],[0,-3]]
		self.goals_log = {'g1':[3,-3], 'g2':[3,-6], 'g3':[3,-6], 'g4':[-5,-6], 'g5':[-3,-1],'g6':[-1,-16],
					'g7':[-13,-11],'g8':[-3,-8],'g9':[2,3],'g10':[3,-6],'g11':[-11,-6]}
		self.goals = [x for x in self.goals_log.keys()]
		print("Goals",self.goals)
		self.completed_goals = {}
		self.time_log = []

		rospy.init_node('central_server')
		self.service = rospy.Service('task_assign', GoalRequest, self.assign_task)
		self.service = rospy.Service('goal_complete',GoalCompletion, self.goal_complete)
	# service call request handling
	def assign_task(self, req):
		res = GoalRequestResponse()
		print(req.bot_name ," requesting for the job")
		if len(self.goals) == 0:
			res.success = False
			print("Goals are empty")
			"""
			" DO SOMETHING TO PRINT THE LOG
			"""
		else:
			goal_name = self.goals[0]
			goal = self.goals_log[goal_name]
			res.goal_x = goal[0]
			res.goal_y = goal[1]
			res.stamp = rospy.Time(0)
			res.success = True
			self.goals.pop(0)
			print(goal_name," assigned to ", req.bot_name)
			self.free_robots.remove(req.bot_name)
			self.busy_robots.append(req.bot_name)
			print("Free", self.free_robots)
			print("Busy", self.busy_robots)	
		return res

	def goal_complete(self, req):
		res = GoalCompletionResponse()
		print(req.bot_name,"Completed goal in ", req.total_time)
		self.free_robots.append(req.bot_name)
		self.busy_robots.remove(req.bot_name)
		print("Free", self.free_robots)
		print("Busy", self.busy_robots)	
		res.success = True
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
	rospy.spin() # keeps your node alive.

