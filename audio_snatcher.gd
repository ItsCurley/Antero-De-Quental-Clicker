extends Node2D

@onready var tween = get_tree().create_tween()

func _ready() -> void:
	go()

func go():
	tween.tween_property($Guyholdingmic, "position", Vector2(1157,290), 3)
	tween.tween_property($Guyholdingmic, "scale", Vector2(0.6,0.345), 2)
	tween.tween_callback(snatch)
func snatch():
	print("Hello")
