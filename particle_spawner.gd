extends Node

@export var particle: PackedScene

func spawn():
	var p = particle.instantiate()
	add_child(p)


func _on_antero_pressed() -> void:
	spawn()
