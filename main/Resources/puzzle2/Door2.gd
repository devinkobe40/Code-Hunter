extends KinematicBody2D

onready var puzzle = $Puzzle2/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_Puzzle2_clear():
	queue_free()