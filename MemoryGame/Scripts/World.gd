extends Node2D
enum _colors {GREEN, BLUE, RED, YELLOW}
var rng = RandomNumberGenerator.new()
var _genSeq = []
var _guess = []

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Blue.connect("_blue", self, "_blue")
	$Red.connect("_red", self, "_red")
	$Green.connect("_green", self, "_green")
	$Yellow.connect("_yellow", self, "_yellow")
	genSequence()

func genNum():
	rng.randomize()
	return rng.randi_range(0, 3)

func genSequence():
	for i in range(0,4):
		rng.randomize()
		_genSeq[i] = rng.rndi_range(0,3)
		print(_genSeq[i])

func _blue():
	print("received")

func _red():
	print("received")

func _green():
	print("received")

func _yellow():
	print("received")

