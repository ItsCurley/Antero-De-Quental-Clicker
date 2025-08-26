extends Button

var SoundCrew = 0
@onready var Clicks = $"..".Clicks

func _on_pressed() -> void:
	if Clicks>800:
		Clicks=Clicks-800
		SoundCrew = SoundCrew + 1
		$"..".relabel()
		
