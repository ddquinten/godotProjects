extends ProgressBar

onready var main = get_node("/root/World")

func update():
	max_value = main.getEnemyHealth() * 1000
	$Health.text = ("%d/%d" % [main.getHealth(), main.getEnemyHealth()])
	yield(animate_value(main.getHealth() * 1000), "completed")


func animate_value(target, duration=1):
	$Tween.interpolate_property(self, 'value', value, target, duration, Tween.TRANS_SINE, Tween.EASE_OUT)
	$Tween.start()
	yield($Tween, "tween_completed")
