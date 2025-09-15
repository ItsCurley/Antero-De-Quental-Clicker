extends AudioStreamPlayer2D
var enabled = true

func _process(delta):
	if enabled:
		var mouse_pos = get_global_mouse_position()
		var dist = global_position.distance_to(mouse_pos)
		volume_db = lerp(0, -80, clamp(dist / max_distance, 0, 1))
	else:
		volume_db = -80



func _on_mute_button_toggled(toggled_on: bool) -> void:
	enabled = not toggled_on
