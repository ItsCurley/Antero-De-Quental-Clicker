extends Timer

var poemrain = preload("res://poem_rain.tscn")



func _on_timeout() -> void:
	add_child(poemrain.instantiate())
	$"..".gain(1)
