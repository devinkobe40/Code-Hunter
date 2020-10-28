extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	$anim.play("idle")


func interact():
	$CanvasLayer/WindowDialog.popup_centered()
	$k.play()