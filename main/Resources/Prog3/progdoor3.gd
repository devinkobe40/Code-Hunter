extends KinematicBody2D

onready var puzzle = $ide3/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_ide3_clear():
	queue_free()
