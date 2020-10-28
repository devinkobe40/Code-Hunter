extends KinematicBody2D


func _ready():
	set_physics_process(false)
	$anim.play("idle")


func interact():
	$CanvasLayer/WindowDialog.popup_centered()
	$c.play()