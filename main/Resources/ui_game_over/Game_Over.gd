extends Control

export (String) var menu
export (String) var exit

func _ready():
	$WindowDialog.popup_centered()

func _on_Button_pressed():
	get_tree().change_scene(menu)
	

func _on_Button2_pressed():
	get_tree().quit()
