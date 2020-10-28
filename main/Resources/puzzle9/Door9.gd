extends KinematicBody2D

onready var puzzle = $Puzzle9/WindowDialog

func interact():
	puzzle.popup_centered()


func _on_Puzzle9_clear():
	queue_free()