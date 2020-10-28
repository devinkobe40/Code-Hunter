extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func interact():
	$CanvasLayer/WindowDialog.popup_centered()
	$cc1.play()
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	$anim.play("idle")