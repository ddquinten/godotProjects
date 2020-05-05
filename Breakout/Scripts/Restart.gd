extends Button

onready var main = get_node("/root/World")

func _pressed():
	print("pressed")
	var new_pause_state = not get_tree().paused
	#get_tree().paused = new_pause_state
	visible = new_pause_state
	main.init()

