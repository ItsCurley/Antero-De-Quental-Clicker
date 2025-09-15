extends Node2D

var poemspawner = preload("res://poemspawner.tscn")
var Clicks = 0
var Poems = 0
var mult = 1

func relabel():
	$Counter.text = "Anterocoin: %s" %Clicks

func _process(delta):
	var mat = $Title.material
	var offset = mat.get_shader_parameter("grad_offset")
	offset += delta * 1  # speed
	if offset > 1.0:
		offset = 0.0
	mat.set_shader_parameter("grad_offset", offset)

func gain(click):
	Clicks = Clicks + (click * mult)
	relabel()


func _on_antero_pressed() -> void:
	gain(1)

func _on_poem_upgrade_pressed() -> void:
	if Clicks>=50:
		Clicks=Clicks-50
		Poems = Poems + 1
		relabel()
		add_child(poemspawner.instantiate())
