extends KinematicBody2D

onready var puzzle = $logical3/WindowDialog
func interact():
	puzzle.popup_centered()


func _on_logical3_clear():
	queue_free()
