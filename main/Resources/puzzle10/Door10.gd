extends KinematicBody2D

onready var puzzle = $Puzzle10/WindowDialog

func interact():
	puzzle.popup_centered()


func _on_Puzzle10_clear():
	queue_free()