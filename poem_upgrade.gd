extends Button

func _ready() -> void:
	$Tooltip.visible = false

func _on_mouse_entered() -> void:
	$Tooltip.visible = true

func _on_mouse_exited() -> void:
	$Tooltip.visible = false

func _process(delta: float) -> void:
	$Tooltip.position.y = get_local_mouse_position().y
