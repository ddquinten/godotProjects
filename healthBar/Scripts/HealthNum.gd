extends Label

export (int) var paddingLength = 4

var _lives = 10

func _ready():
	update()
	
func reset():
	_lives = 3
	update()

func adjust(value):
	_lives += value
	update()

func update():
	text = ("%0*d" % [paddingLength, _lives]) 
