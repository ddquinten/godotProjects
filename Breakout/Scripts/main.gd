extends Node2D

const bricks_scene = preload("res://Mini-Scenes/Bricks.tscn")

signal game_over
signal newGame

var _ball_count = 0 setget setBallCount, getBallCount
var _lives = 3 
var _MOVE_SPEED = 250 
var _brick_count = 15 setget adjustBrickCount, getBrickCount

func _ready():
	spawnBricks()

func getBrickCount():
	return _brick_count

func adjustBrickCount(value):
	_brick_count += value

func getLives():
	return _lives

func setLives(value):
	_lives = value

func getBallCount():
	return _ball_count

func setBallCount(value):
	_ball_count = value

func getSpeed():
	return _MOVE_SPEED

func spawnBricks():
	_brick_count = 15
	var bricks = get_tree().get_nodes_in_group("Bricks")
	for brick in bricks:
		brick.queue_free()
	bricks = bricks_scene.instance()
	add_child(bricks)

func brickDestory():
	get_node("GUI/Score").adjust(100)

func loseLife():
	_lives -= 1
	get_node("GUI/Lives").adjust(-1)

func gameOver():
	emit_signal("game_over")

func init():
	spawnBricks()
	get_node("GUI/Lives").reset()
	get_node("GUI/Score").reset()
	_lives = 3
	_ball_count = 0
	emit_signal("newGame")
