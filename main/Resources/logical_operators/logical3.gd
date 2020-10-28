extends CanvasLayer
signal clear

func _on_Button_pressed():
	var output = $WindowDialog/workspace/LineEdit.get_text()
		
	if output == "and":
		$WindowDialog/output.set_text("False")
	if output == "or":
		$WindowDialog/output.set_text("False")
	if output == "is not":
		$WindowDialog/output.set_text("valid")
	else:
		$WindowDialog/output.set_text("Invalid")
	
	if $WindowDialog/output.get_text() == "valid":
		emit_signal("clear")
