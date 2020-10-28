extends KinematicBody2D

onready var puzzle = $ide_4/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_ide_4_clear():
	queue_free()
