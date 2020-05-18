extends Node2D
#enum _colors {GREEN, BLUE, RED, YELLOW}
onready var timer = $ButtonDelay
onready var _rng = RandomNumberGenerator.new()
onready var _sequenceLength = 3

var _genSeq
var _guess
var _index
var _canReceive
var _valid

signal _received
signal _done
signal _gameReadyState
signal _gameOver

func _ready():
	$Blue.connect("_blue", self, "_buttonReceived")
	$Red.connect("_red", self, "_buttonReceived")
	$Green.connect("_green", self, "_buttonReceived")
	$Yellow.connect("_yellow", self, "_buttonReceived")
	$GoButton.connect("_go", self, "_startGame")
	timer.set_wait_time(.5)
	setUpGame()

func setUpGame(value = 3):
	$GameOver.visible = false
	$GoButton.toggle(true)
	$SeqLength.toggle(true)
	_genSeq = []
	_guess = []
	_canReceive = false
	_valid = false
	_index = 0
	_sequenceLength = value
	$SeqLength._update()

func _startGame():
	# section to create random sequence
	$GoButton.toggle(false)
	$Wait.toggleText(false, "Watch Carefully!")
	genSequence(_sequenceLength)
	yield(self, "_gameReadyState")
	
	#prepare round info
	$Wait.toggle(false)
	$GoButton.toggle(false)
	$"Last Input".toggleText(true, "")
	
	# checking user guess 
	while _index < _genSeq.size():
		_canReceive = true
		yield(self, "_received")
		if not _valid:
			gameOver()
			return
		else:
			_index = _index + 1
	
	$"Last Input".toggle(false)
	setUpGame(_sequenceLength + 1)

func gameOver():
	$"Last Input".toggle(false)
	$GameOver.visible = true
	emit_signal("_gameOver")
	
func genNum():
	_rng.randomize()
	return _rng.randi_range(0, 3)

func genSequence(value):
	for i in range(0,value):
		_rng.randomize()
		_genSeq.append(genNum())
		match _genSeq[i]:
			0: #green 
				toggleButton($Green)
			1: #blue
				toggleButton($Blue)
			2: #red 
				toggleButton($Red)
			3: #yellow
				toggleButton($Yellow)
		yield(self, "_done")
	emit_signal("_gameReadyState")

func toggleButton(color):
	color.toggle_mode = true
	color.pressed = true
	timer.start()
	yield(timer, "timeout")
	color.pressed = false
	color.toggle_mode = false
	timer.start()
	yield(timer, "timeout")
	emit_signal("_done")
	

func checkSequence():
	_valid = _guess[_index] == _genSeq[_index]
	emit_signal("_received")

func _buttonReceived(value):
	if _canReceive:
		_canReceive = false
		_guess.append(value)
		checkSequence()

