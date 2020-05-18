extends Node2D

func _ready():
	$CanvasLayer/Start.connect("_enterGame", self, "_enterGame")
	$CanvasLayer/Exit.connect("_exit", self, "_exit")
	
func _enterGame():
	get_tree().change_scene("res://Scenes/World.tscn")

func _exit():
	get_tree().quit()
