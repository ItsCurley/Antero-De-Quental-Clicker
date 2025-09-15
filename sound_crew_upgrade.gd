extends TextureButton

var SoundCrew = 0
@onready var Clicks = $"..".Clicks
var cost = 100
var time = 0

func _ready() -> void:
	$Tooltip.visible = false

func _process(delta: float) -> void:
	if get_local_mouse_position().y - 30 > -5:
		$Tooltip.position.y = -4
	else:
		$Tooltip.position.y = get_local_mouse_position().y - 30
	if SoundCrew >= 1:
		time = time+delta
		if time >= 0.2:
			$"..".gain(1*SoundCrew)
			time=0

func _on_pressed() -> void:
	if $"..".Clicks>=cost:
		$"..".Clicks=$"..".Clicks-cost
		SoundCrew = SoundCrew + 1
		$"..".relabel()
		
		if SoundCrew >= 1:
			$"Micosofiones".visible = true
			$"Thecrew".visible = true

func _on_mouse_entered() -> void:
	$Tooltip.visible = true

func _on_mouse_exited() -> void:
	$Tooltip.visible = false
	
