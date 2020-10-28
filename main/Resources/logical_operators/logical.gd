extends CanvasLayer
signal clear


func _on_Button_pressed():
	var output = $WindowDialog/workspace/LineEdit.get_text()
	
	if output == "is not":
		$WindowDialog/output.set_text("Invalid")
	if output == "or":
		$WindowDialog/output.set_text("Invalid")
	if output == "and":
		$WindowDialog/output.set_text("they are both true")
	else:
		$WindowDialog/output.set_text("Invalid ")
		
	if $WindowDialog/output.get_text() == "they are both true":
		emit_signal("clear")