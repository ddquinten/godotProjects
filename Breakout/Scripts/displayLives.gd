extends RichTextLabel
onready var main = get_node("/root/World")

func printLives():
	var output = "Lives: " + str(main.getLives())
	set_text(output)
