extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	for button in $Menu/Centerrow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		
	

func _on_Button_pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)
	