extends GPUParticles2D

func _ready():
	position = get_global_mouse_position()
	one_shot = true
	emitting = true
	finished.connect(queue_free)
