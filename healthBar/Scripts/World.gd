extends Node2D

var _health setget setHealth, getHealth
var _enemyHealth setget setEnemyHealth, getEnemyHealth

func _ready():
	_health = 0
	_enemyHealth = 10
	get_node("ProgressBar").update()

func setHealth(value):
	if value > _enemyHealth:
		_health = _enemyHealth
	elif value < 0:
		_health = 0
	else:
		_health = value
	get_node("ProgressBar").update()

func getHealth():
	return _health

func setEnemyHealth(value):
	if value < _health:
		_health = value
	_enemyHealth = value
	get_node("ProgressBar").update()

func getEnemyHealth():
	return _enemyHealth
