extends KinematicBody2D

onready var puzzle = $ide2/WindowDialog

func interact():
	puzzle.popup_centered()


func _on_ide2_clear():
	queue_free()
