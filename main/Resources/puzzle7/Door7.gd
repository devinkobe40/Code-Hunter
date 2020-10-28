extends KinematicBody2D

onready var puzzle = $Puzzle7/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_Puzzle7_clear():
	queue_free()