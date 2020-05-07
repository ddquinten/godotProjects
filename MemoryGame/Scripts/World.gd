extends Node2D
enum _colors {GREEN, BLUE, RED, YELLOW}
var rng = RandomNumberGenerator.new()
var _genSeq = []
var _guess = []

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
	for i in range(0,3):
		rng.randomize()
		_genSeq.append(genNum())
		print(_genSeq[i])

func _blue():
	print("received")

func _red():
	print("received")

func _green():
	print("received")

func _yellow():
	print("received")

