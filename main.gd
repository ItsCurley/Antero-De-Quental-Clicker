extends Node2D

var poemspawner = preload("res://poemspawner.tscn")
var Clicks = 0
var Poems = 0

func relabel():
	$Counter.text = "Anterocoin: %s" %Clicks

func _on_panel_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == 1 and event.pressed:
		Clicks = Clicks + 1 
		relabel()

func _process(delta):
	var mat = $Title.material
	var offset = mat.get_shader_parameter("grad_offset")
	offset += delta * 1  # speed
	if offset > 1.0:
		offset = 0.0
	mat.set_shader_parameter("grad_offset", offset)

func _on_button_pressed() -> void:
	if Clicks>=50:
		Clicks=Clicks-50
		Poems = Poems + 1
		relabel()
		add_child(poemspawner.instantiate())
