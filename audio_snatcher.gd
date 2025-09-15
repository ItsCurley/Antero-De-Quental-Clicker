extends Node2D

@onready var tween:Tween
var health = 0
var time = 0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	time = time+delta
	if time >= 40 and health <= 0 and $"../SoundCrewUpgrade".SoundCrew >= 1:
		go()
		

func go():
	#reset
	tween = get_tree().create_tween()
	$Guyholdingmic.visible = true
	$Guyholdingmic.position = Vector2(516, -523)
	$Guyholdingmic.scale = Vector2(0.345, 0.345)
	health = 3
	
	# Start tweening
	tween.tween_property($Guyholdingmic, "position", Vector2(140,-523), 3)
	tween.tween_property($Guyholdingmic, "scale", Vector2(0.6,0.345), 2)
	tween.tween_callback(snatch)
func snatch():
	tween.kill()
	tween = create_tween()
	tween.tween_property($Guyholdingmic, "scale", Vector2(0.6,0.360), 0.1)
	tween.tween_property($Guyholdingmic, "scale", Vector2(0.6,0.345), 0.1)
	$"..".Clicks = $"..".Clicks - 5
	$"..".relabel()
	tween.tween_callback(snatch)

func _on_guyholdingmic_pressed() -> void:
	health = health-1
	if health <= 0:
		$Guyholdingmic.visible = false
		if tween:
			tween.kill()
		time = 0
