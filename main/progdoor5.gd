extends KinematicBody2D

onready var puzzle = $ide5/WindowDialog

func interact():
	puzzle.popup_centered()

func _on_ide5_clear():
	queue_free()
