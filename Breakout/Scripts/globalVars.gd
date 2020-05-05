extends Node2D

var ball_count = 0
var lives = 3
var MOVE_SPEED = 250

func getLives():
	return lives

func getBallCount():
	return ball_count
	
func setBallCount(value):
	ball_count = value

