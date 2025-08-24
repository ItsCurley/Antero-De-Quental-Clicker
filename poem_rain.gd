extends Sprite2D

var speed = 100

func _ready() -> void:
	position.x = randf_range(0, 1152)
	position.y = -125
	modulate.a = 0.4

func _process(delta: float) -> void:
	position.y=position.y+delta*speed
	modulate.a = 0.4-abs(position.y-445)/1000
	if position.y >= 774:
		queue_free()
