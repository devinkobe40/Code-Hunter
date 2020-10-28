extends KinematicBody2D

onready var puzzle = $Puzzle4/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_Puzzle4_clear():
	queue_free()