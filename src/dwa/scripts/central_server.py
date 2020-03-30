#!/usr/bin/env python
import rospy
import numpy as np 

from dwa.srv import GoalRequest, GoalRequestResponse, GoalCompletion, GoalCompletionResponse
# information of each robot
file_output_path = "/home/siddhesh/warehouse_sim/warehouse_dwa/output_log/"
file_input_path = "/home/siddhesh/warehouse_sim/warehouse_dwa/output_log/"
file_robot_path = "/home/siddhesh/warehouse_sim/warehouse_dwa/output_log/"

ns = rospy.get_namespace()
class Robot():
	def __init__(self):
		self.map_x = 0.0
		self.map_y = 0.0

class Server():
	def __init__(self):
		print("Server Ready. Initializing goals")
		#self.free_robots = ['r1','r2','r3','r4','r5','r6','r7','r8','r9','r10','r11','r12','r13','r14','r15','r16','r17','r18','r19','r20']
		self.busy_robots = []
		#self.goals_log = {'g0':[-32,32],'g1':[-32, 30],'g2':[-32,28], 'g3':[-32,-16],'g4':[-32,-14], 'g5':[-32,22],'g6':[-32,-24],'g7':[-32,-9],'g8':[-32,0],'g9':[-32,-3],'g10':[-32,-20],'g11':[-32,-1],'g12':[-32,32],'g13':[-32, 30],'g14':[-32,20], 'g15':[-32,-16],'g16':[-32,-14], 'g17':[-32,22],'g18':[-30,32],'g19':[-30, 30],'g20':[-30,20]}
		#self.goals_log = {}
		## goal name: [[coords], robot, time_taken]
		self.completed_goals = {}
		##e each robot with its incomplete goal
		self.crashed_robots = {}
		self.time_log = []
		self.free_robots = self.read_all_robots()
		print("Free",self.free_robots)
		self.goals_log = self.read_all_goals()
		self.goals = [x for x in self.goals_log.keys()]
		print("Goals",self.goals)
		rospy.init_node('central_server')
		self.service = rospy.Service('task_assign', GoalRequest, self.assign_task)
		self.service = rospy.Service('goal_complete',GoalCompletion, self.goal_complete)

	def read_all_robots(self):
		robots = []
		path = file_output_path + "robots.txt"
		f = open(path, "r")
		lines = f.readlines()
		for line in lines:
			robots.append(line.strip())
		f.close()
		return robots

	def read_all_goals(self):
		goals_log = {}
		path = file_output_path + "goals.txt"
		f = open(path,"r")
		lines = f.readlines()
		for line in lines:
			line_arr = str.split(line)
			goals_log[line_arr[0]] = [int(line_arr[1]),int(line_arr[2])]
		f.close()
		return goals_log

	# service call request handling
	def assign_task(self, req):
		res = GoalRequestResponse()
		print(req.bot_name ," requesting for the job")
		if len(self.goals) == 0:
			res.success = False
			#print("Goals are empty")
			"""
			" DO SOMETHING TO PRINT THE LOG
			"""
			if len(self.busy_robots) == 0:
				#print(self.completed_goals)
				print("All goals are completed")
				f = open(file_output_path + "/output_log.txt","w+")
				f.write("=====================  Completed Goals  ================================\n")
				for c in self.completed_goals:
					op = c + "  " + str(self.completed_goals[c][0]) + "  " + str(self.completed_goals[c][1]) + "  " + str(self.completed_goals[c][2]) + "secs\n"
					f.write(op)
				f.write("==============  Crashed Robots & incomplete goals ======================\n")
				if len(self.crashed_robots) == 0:
					f.write("No crashes")
				else:
					for c in self.crashed_robots:
						op = str(self.crashed_robots[c]) + "  " + str(self.goals_log[self.crashed_robots[c]]) + " failed to complete by " + str(c) + "\n"
						f.write(op)
				f.write("\n\n")
				f.close()
		else:
			goal_name = self.goals[0]
			goal = self.goals_log[goal_name]
			res.goal_x = goal[0]
			res.goal_y = goal[1]
			res.stamp = rospy.Time(0)
			res.success = True
			res.goal_name = goal_name
			self.goals.pop(0)
			print(goal_name," assigned to ", req.bot_name)
			if req.bot_name in self.free_robots:
				self.free_robots.remove(req.bot_name)
			self.busy_robots.append(req.bot_name)
			print("Free", self.free_robots)
			print("Busy", self.busy_robots)
		return res

	def goal_complete(self, req):
		res = GoalCompletionResponse()
		if not req.goal_success:
			self.crashed_robots[req.bot_name] = req.goal_name
			#print("Failed bots: ", self.crashed_robots)
			res.success = False
			if req.bot_name in self.busy_robots:
				self.busy_robots.remove(req.bot_name)
		else:
			print(req.bot_name,"Completed goal", req.goal_name, " in ", req.total_time)
			self.free_robots.append(req.bot_name)
			if req.bot_name in self.busy_robots:
				self.busy_robots.remove(req.bot_name)
			print("Free", self.free_robots)
			print("Busy", self.busy_robots)	
			res.success = True
			self.completed_goals[req.goal_name] = [self.goals_log[req.goal_name], req.bot_name, req.total_time]
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
