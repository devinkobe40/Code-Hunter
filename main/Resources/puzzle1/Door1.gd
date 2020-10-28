extends KinematicBody2D

onready var puzzle = $Puzzle1/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_Puzzle1_clear():
	queue_free()