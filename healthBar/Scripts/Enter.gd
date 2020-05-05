extends Button

onready var main = get_node("/root/World")

func _pressed():
	var value = int($TextEdit.get_line(0))
	$TextEdit.text = ""
	main.setEnemyHealth(value)
