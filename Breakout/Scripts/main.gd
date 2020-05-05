extends Node2D

signal game_over
signal newGame

var ball_count = 0
var lives = 3
var MOVE_SPEED = 250

func getLives():
	return lives

func getBallCount():
	return ball_count
	
func setBallCount(value):
	ball_count = value

func getSpeed():
	return MOVE_SPEED

func brickDestory():
	get_node("GUI/Score").adjust(100)

func loseLife():
	lives -= 1
	get_node("GUI/Lives").adjust(-1)

func gameOver():
	emit_signal("game_over")

func init():
	get_node("GUI/Lives").reset()
	get_node("GUI/Score").reset()
	setBallCount(0)
	emit_signal("newGame")
