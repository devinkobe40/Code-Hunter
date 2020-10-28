extends KinematicBody2D

onready var puzzle = $Puzzle8/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_Puzzle8_clear():
	queue_free()