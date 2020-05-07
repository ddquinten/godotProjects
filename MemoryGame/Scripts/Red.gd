extends Button

signal _red

func _pressed():
	emit_signal("_red")

