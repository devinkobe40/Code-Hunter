extends CanvasLayer
signal clear


func _on_Button_pressed():
	var output = $WindowDialog/workspace/LineEdit.get_text()
	
	if output == "or":
		$WindowDialog/output.set_text("True")
	elif output == "and":
		$WindowDialog/output.set_text("False")
	elif output == "is not":
		$WindowDialog/output.set_text("False")
	else:
		$WindowDialog/output.set_text("Invalid")
	
	if $WindowDialog/output.get_text() == "True":
		emit_signal("clear")
