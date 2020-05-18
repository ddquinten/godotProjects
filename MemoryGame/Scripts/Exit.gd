extends Button

signal _exit

func _pressed():
	emit_signal("_exit")
