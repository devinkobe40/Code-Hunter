extends KinematicBody2D

onready var puzzle = $logical/WindowDialog
func interact():
	puzzle.popup_centered()



func _on_logical_clear():
	queue_free()
