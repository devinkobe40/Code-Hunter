extends KinematicBody2D

onready var puzzle = $Puzzle6/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_Puzzle6_clear():
	queue_free()