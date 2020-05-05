extends Control
onready var main = get_node("/root/World")

func _input(event):
	if event.is_action_pressed("pause"):
		if main.getLives() > 0:
			var new_pause_state = not get_tree().paused
			get_tree().paused = new_pause_state
			visible = new_pause_state
