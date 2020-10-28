extends KinematicBody2D

onready var puzzle = $Puzzle5/WindowDialog

func interact():
	puzzle.popup_centered()


func _on_Puzzle5_clear():
	queue_free()