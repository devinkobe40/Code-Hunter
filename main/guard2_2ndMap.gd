extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
func interact():
	$CanvasLayer/WindowDialog.popup_centered()
	$g1.play()
func _ready():
	set_physics_process(false)

	$anim.play("idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
