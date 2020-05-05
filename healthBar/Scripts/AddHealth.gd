extends Button

onready var main = get_node("/root/World")

func _pressed():
	main.setHealth(main.getHealth() + 1)
	
