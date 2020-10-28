extends KinematicBody2D

onready var puzzle = $logical2/WindowDialog
func interact():
	puzzle.popup_centered()
	


func _on_logical2_clear():
	queue_free()
