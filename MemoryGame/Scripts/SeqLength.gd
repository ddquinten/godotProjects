extends Label
onready var global = $"/root/World"

func _ready():
	global.connect("_gameOver", self, "_gameOver")

func _update():
	text = "Sequence Length: "
	$Length.text = str(global._sequenceLength)

func _gameOver():
	text = "   Highest Length:"
	var lowest = global._sequenceLength - 1
	if lowest < 3:
		lowest = 0
	$Length.text = str(lowest)
	
func toggle(value):
	visible = value
