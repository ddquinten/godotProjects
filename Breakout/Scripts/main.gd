extends Node2D
onready var game_vars = get_node("/root/GlobalVars")

func brickDestory():
	get_node("GUI/Score").adjust(100)

func loseLife():
	game_vars.lives -= 1
	get_node("GUI/Lives").adjust(-1)

func gameOver():
	print("game over")
	print("Score: ", get_node("GUI/Score").getScore())
