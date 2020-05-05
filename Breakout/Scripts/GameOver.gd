extends Control
onready var main = get_node("/root/World")

func _ready():
	main.connect("game_over", self, "_on_gameOver")
	main.connect("newGame", self, "_on_newGame")

func _on_gameOver():
	visible = !visible
	
func _on_newGame():
	visible = !visible
	
