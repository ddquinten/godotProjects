extends Node2D
enum _colors {GREEN, BLUE, RED, YELLOW}
var rng = RandomNumberGenerator.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var x = genNum()
	match (x):
		_colors.GREEN:
			print("green")
		_colors.BLUE:
			print("blue")
		_colors.RED:
			print("red")
		_colors.YELLOW:
			print("yellow")

func genNum():
	rng.randomize()
	return rng.randi_range(0, 3)


func genSequence():
	pass

