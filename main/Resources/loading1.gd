extends Control
export (String) var world_name
var timer

func _ready():
	timer = Timer.new()
	add_child(timer)
	timer.autostart = true
	timer.wait_time = 5
	$WindowDialog.popup()
	


	


func _on_Timer_timeout():
	get_tree().change_scene(world_name)

