extends Node2D

func menu():
	#Control for Menu
	if Input.is_action_pressed("ui_menu"):
		$Player/Control/WindowDialog.popup()

func _physics_process(delta):
	menu()