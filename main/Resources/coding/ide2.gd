extends CanvasLayer
signal clear


	

func _on_Button_pressed():
	var output = $WindowDialog/workspace/LineEdit.get_text()
	var num1 = 5
	var num2 = 10
	var temp = output.lstrip("\"")
	var final_output = temp.rstrip("\"")
	print(final_output.find("num1"))
	if output.begins_with("\""):
		if output.ends_with("\""):
			$WindowDialog/output.set_text(str(final_output))
		else:
			$WindowDialog/output.set_text("name '"+output+"' is not defined")
	elif output == "num1":
		$WindowDialog/output.set_text(str(num1))
	elif output == "num2":
		$WindowDialog/output.set_text(str(num2))
	elif output.match("num1+num2"):
		$WindowDialog/output.set_text(str(num1 + num2))
	elif output.match("num1 +num2"):
		$WindowDialog/output.set_text(str(num1 + num2))
	elif output.match("num1+ num2"):
		$WindowDialog/output.set_text(str(num1 + num2))
	elif output.match("num1 + num2"):
		$WindowDialog/output.set_text(str(num1 + num2))
		
		
	elif output.match("num2+num1"):
		$WindowDialog/output.set_text(str(num1 + num2))
	elif output.match("num2 +num1"):
		$WindowDialog/output.set_text(str(num1 + num2))
	elif output.match("num2+ num1"):
		$WindowDialog/output.set_text(str(num1 + num2))
	elif output.match("num2 + num1"):
		$WindowDialog/output.set_text(str(num1 + num2))
		
		
	elif output.match("num1+num1"):
		$WindowDialog/output.set_text(str(num1 + num1))
	elif output.match("num1 +num1"):
		$WindowDialog/output.set_text(str(num1 + num1))
	elif output.match("num1+ num1"):
		$WindowDialog/output.set_text(str(num1 + num1))
	elif output.match("num1 + num1"):
		$WindowDialog/output.set_text(str(num1 + num1))
		
	elif output.match("num2+num2"):
		$WindowDialog/output.set_text(str(num2 + num2))
	elif output.match("num2 +num2"):
		$WindowDialog/output.set_text(str(num2 + num2))
	elif output.match("num2+ num2"):
		$WindowDialog/output.set_text(str(num2 + num2))
	elif output.match("num2 + num2"):
		$WindowDialog/output.set_text(str(num2 + num2))
	else:
		$WindowDialog/output.set_text("name '"+output+"' is not defined")
	
	if $WindowDialog/output.get_text() == "15":
		emit_signal("clear")
