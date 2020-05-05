extends KinematicBody2D

const ball_scene = preload("res://Mini-Scenes/Ball.tscn")
onready var main = get_node("/root/World")
var velocity = Vector2()

func _ready():
	set_physics_process(true)
	set_process_input(true)


# mouse movement
#func _physics_process(_delta):
#	var y = get_position().y
#	var mouse_x = get_viewport().get_mouse_position().x
#	set_position(Vector2(mouse_x, y))

func _physics_process(_delta):
	velocity.y = get_position().y
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -main.getSpeed()
	elif Input.is_action_pressed("ui_right"):
		velocity.x = main.getSpeed()
	else:
		velocity.x = 0
	move_and_slide(velocity, Vector2(0, 0))

func _input(_event):
	if Input.is_action_pressed("shoot"):
		if (main.getBallCount() == 0 && main.getLives() > 0):
			var ball = ball_scene.instance()
			ball.set_position(get_position() - Vector2(0, 16))
			get_tree().get_root().add_child(ball)
			main.setBallCount(1)

# used for action on mouse click
#func _input(event):
#	if (event is InputEventMouseButton && event.is_pressed()):
#		if (game_vars.ball_count == 0 && game_vars.lives > 0):
#			var ball = ball_scene.instance()
#			ball.set_position(get_position() - Vector2(0, 16))
#			get_tree().get_root().add_child(ball)
#			game_vars.ball_count += 1
