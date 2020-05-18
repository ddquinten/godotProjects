extends Label

func _ready():
	$"../Blue".connect("_blue", self, "_update")
	$"../Red".connect("_red", self, "_update")
	$"../Green".connect("_green", self, "_update")
	$"../Yellow".connect("_yellow", self, "_update")

func _update(color):
	match color:
		0:
			$Input.text = "Green"
		1:
			$Input.text = "Blue"
		2:
			$Input.text = "Red"
		3:
			$Input.text = "Yellow"
		_:
			$Input.text = ""

func toggleText(value, string):
	visible = value
	_update(string)

func toggle(value):
	 visible = value
