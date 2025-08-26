extends AudioStreamPlayer2D


func _process(delta):
	var mouse_pos = get_global_mouse_position()
	var dist = global_position.distance_to(mouse_pos)
	volume_db = lerp(0, -80, clamp(dist / max_distance, 0, 1))
