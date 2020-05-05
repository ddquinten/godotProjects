extends Node2D

const bricks_scene = preload("res://Mini-Scenes/Bricks.tscn")

signal game_over
signal newGame

var ball_count = 0
var lives = 3
var MOVE_SPEED = 250
var brick_count = 15

func _ready():
	spawnBricks()

func getBrickCount():
	return brick_count

func setBrickCount(value):
	brick_count = value

func spawnBricks():
	var bricks = get_tree().get_nodes_in_group("Bricks")
	for brick in bricks:
		brick.queue_free()
	bricks = bricks_scene.instance()
	add_child(bricks)

func getLives():
	return lives

func setLives(value):
	lives = value

func getBallCount():
	return ball_count
	
func setBallCount(value):
	ball_count = value

func getSpeed():
	return MOVE_SPEED

func brickDestory():
	get_node("GUI/Score").adjust(100)

func loseLife():
	setLives(getLives() - 1)
	get_node("GUI/Lives").adjust(-1)

func gameOver():
	emit_signal("game_over")

func init():
	spawnBricks()
	get_node("GUI/Lives").reset()
	get_node("GUI/Score").reset()
	setLives(3)
	setBallCount(0)
	emit_signal("newGame")
