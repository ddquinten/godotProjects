extends Button

signal _go
onready var gameOver = false

func _ready():
	$"/root/World".connect("_gameOver", self, "_gameOver")

func _pressed():
	if !gameOver:
		emit_signal("_go")
	else:
		text = "Start Round"
		gameOver = false
		$"/root/World".setUpGame()

func _gameOver():
	text = "Start Over?"
	visible = true
	gameOver = true

func toggle(value):
	visible = value
