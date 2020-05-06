extends Node2D

var rng = RandomNumberGenerator.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	genSequence()

func genNum():
	rng.randomize()
	var ran_seq = rng.randi_range(1, 4)
	print(ran_seq)


func genSequence():
	rng.randomize()
	var ran_seq = rng.randi_range(1, 4)
	print(ran_seq)
