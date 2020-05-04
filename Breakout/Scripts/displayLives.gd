extends RichTextLabel
onready var game_vars = get_node("/root/GlobalVars")

func printLives():
	var output = "Lives: " + str(game_vars.lives)
	set_text(output)
