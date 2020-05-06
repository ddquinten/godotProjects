extends Button

func _pressed():
	get_node("/root/World").genNum()
	get_node("/root/World/Red").toggle_mode = true
	get_node("/root/World/Red").pressed = true
	get_node("/root/World/Red").pressed = false
