extends CanvasLayer
signal clear

func _on_Button_pressed():
	var content = $WindowDialog/workspace/LineEdit.get_text()
	var num = 80
	#setting up string value
	var string_input = RegEx.new()
	string_input.compile("(?<=\").*(?=\")")
	#setting up integer value
	
	var integer_input = RegEx.new()
	integer_input.compile("[0-9]+")
	#setting up conditional statements
	var cond_stmnt = RegEx.new()
	cond_stmnt.compile("(\\<|\\>|\\=)")
	
	#searches if there is additional number
	var integer_input2 = RegEx.new()
	integer_input2.compile("(?<=\\<|\\>|\\=)[\\s0-9]+")
	
	var cond_result = cond_stmnt.search(content)
	var str_result = string_input.search(content)
	var int_result = integer_input.search(content)
	var int_result2 = integer_input2.search(content)
	
	if cond_result:
		print(cond_result.get_string())
		
	if content == "num > 70":
		$WindowDialog/output.set_text("It is greater than 70")
		emit_signal("clear")
	if int_result:
		print(int_result.get_string())
		if cond_result:
			print(int_result.get_string() + cond_result.get_string() + int_result2.get_string())
			if cond_result.get_string() == ">":
				if int(int_result.get_string()) > int(int_result2.get_string()):
					$WindowDialog/output.set_text("It is greater than 70")
					emit_signal("clear")
				elif int(int_result.get_string()) < int(int_result2.get_string()):
					$WindowDialog/output.set_text("It is lower than 70")
			if cond_result.get_string() == "<":
				if int(int_result.get_string()) < int(int_result2.get_string()):
					$WindowDialog/output.set_text("It is lower than 70")
				elif int(int_result.get_string()) > int(int_result2.get_string()):
					$WindowDialog/output.set_text("It is greater than 70")
					emit_signal("clear")
			if cond_result.get_string() == "=":
				if int(int_result.get_string()) == int(int_result2.get_string()):
					$WindowDialog/output.set_text("It is lower than 70")
	if str_result:
		$WindowDialog/output.set_text("It is greater than 70")
		if $WindowDialog/output.get_text() == "It is greater than 70":
			emit_signal("clear")
	