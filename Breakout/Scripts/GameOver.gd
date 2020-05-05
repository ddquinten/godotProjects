extends Control
onready var main = get_node("/root/World")

func _ready():
	main.connect("game_over", self, "_on_gameOver")
	main.connect("newGame", self, "_on_newGame")

func _on_gameOver():
	var new_pause_state = not get_tree().paused
	#get_tree().paused = new_pause_state
	visible = new_pause_state
	
func _on_newGame():
	visible = !visible
	
