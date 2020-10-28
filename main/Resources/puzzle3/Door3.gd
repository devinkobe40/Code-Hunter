extends KinematicBody2D

onready var puzzle = $Puzzle3/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_Puzzle3_clear():
	queue_free()