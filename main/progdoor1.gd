extends KinematicBody2D

onready var puzzle = $ide/WindowDialog

func interact():
	puzzle.popup_centered()



func _on_ide_clear():
	queue_free()
