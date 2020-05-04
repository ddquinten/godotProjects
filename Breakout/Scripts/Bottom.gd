extends RigidBody2D

onready var game_vars = get_node("/root/GlobalVars")

func _ready():
	set_physics_process(true)

func _physics_process(_delta):
	var bodies = get_colliding_bodies() # reads from the contact monitor setting in Ball
	
	for body in bodies:
		if body.get_name() == "Ball":
			get_node("..").ball_count = 0
			get_node("..").lives = get_node("..").lives - 1
			print("vals updated")
			body.queue_free()

