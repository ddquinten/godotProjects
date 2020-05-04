tool extends Label

export (int) var paddingLength = 4
onready var game_vars = get_node("/root/GlobalVars")

var score = 3

func _ready():
	update()
	
func reset():
	score = 3
	update()

func adjust(value):
	score += value
	update()

func update():
	$Value.text = ("%0*d" % [paddingLength, score]) 
