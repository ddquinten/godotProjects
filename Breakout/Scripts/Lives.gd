tool extends Label

export (int) var paddingLength = 4

signal gameOver
var lives = 3

func _ready():
	update()
	
func reset():
	lives = 3
	update()

func adjust(value):
	lives += value
	if lives == 0:
		emit_signal("gameOver")
	update()

func update():
	$Value.text = ("%0*d" % [paddingLength, lives]) 
