extends RigidBody2D

const SPEEDUP = 4
const MAXSPEED = 300
onready var main = get_node("/root/World")

func _ready():
	set_physics_process(true)

func _physics_process(_delta):
	var bodies = get_colliding_bodies() # reads from the contact monitor setting in Ball
	for body in bodies:
		if body.is_in_group("Bricks"):
			main.brickDestory();
			main.adjustBrickCount(-1)
			if main.getBrickCount() == 0:
				main.spawnBricks()
			body.queue_free() # deletes the brick

		if body.get_name() == "Paddle":
			var speed = linear_velocity.length()
			var direction = get_position() - body.get_node("Anchor").get_global_position()
			var velocity = direction.normalized() * min((speed + SPEEDUP), MAXSPEED)
			set_linear_velocity(velocity)

		if body.get_name() == "Bottom":
			main.setBallCount(0)
			main.loseLife()
			if main.getLives() == 0:
				main.gameOver()
			queue_free()
