extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	$anim.play("idle")


func interact():
	$CanvasLayer/WindowDialog.popup_centered()
	$c2.play()