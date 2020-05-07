extends Button

signal _green

func _pressed():
	emit_signal("_green")

