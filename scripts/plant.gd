extends AnimatedSprite2D

@onready var plant: AnimatedSprite2D = $"."
@onready var timer: Timer = $Timer

var stages = ["sprout", "stem"]		# add flower
var current_stage = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	plant.animation = stages[current_stage]
	plant.play()
	timer.start(5)

func _on_timer_timeout() -> void:
	current_stage += 1
	if current_stage < stages.size():
		plant.animation = stages[current_stage]
	else:
		timer.stop()
