tool extends Label

export (int) var paddingLength = 4

var score = 0

func _ready():
	update()
	
func reset():
	score = 0
	update()

func adjust(value):
	score += value
	update()

func getScore():
	return score

func update():
	$Value.text = ("%0*d" % [paddingLength, score])
