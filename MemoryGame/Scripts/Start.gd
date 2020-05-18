extends Button

signal _enterGame

func _pressed():
	emit_signal("_enterGame")
