extends Button

signal _blue

func _pressed():
	emit_signal("_blue", 1)

