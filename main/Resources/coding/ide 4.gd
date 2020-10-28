extends CanvasLayer
signal clear


func _on_Button_pressed():
	var min_num = $WindowDialog/workspace/min_num.get_text()
	var max_num = $WindowDialog/workspace/max_num.get_text()
	var cond_num = $WindowDialog/workspace/cond_num.get_text()
	
	#checks if there are special characters and alphabets
	var checker = RegEx.new()
	checker.compile("[a-z_A-Z$!£\\^\\(\\):;@'.,\\<\\>\\=#~]")
	var checker_result1 = checker.search(min_num)
	var checker_result2 = checker.search(max_num)
	var checker_result3 = checker.search(cond_num)
	
	#setting up the first number
	var num1 = RegEx.new()
	num1.compile("[\\s0-9]+")
	var num1_result = num1.search(cond_num)
	#setting up the second number
	var num2 = RegEx.new()
	num2.compile("(?<=\\+|\\-|\\*)[\\s0-9]+")
	var num2_result = num2.search(cond_num)
	
	#setting up the operation
	var ops = RegEx.new()
	ops.compile("(\\+|\\-|\\*)")
	var ops_result = ops.search(cond_num)
	
	var output = ""
	if checker_result1:
		$WindowDialog/output.set_text("Error1")
	elif checker_result2:
		$WindowDialog/output.set_text("Error2")
	elif checker_result3:
		$WindowDialog/output.set_text("Error3")
	else: 
		for i in range(int(min_num), int(max_num)):
			output += str(i)+"\n"
			$WindowDialog/output.set_text(output)
			if num1_result:
				if i == int(num1_result.get_string()):
					output+= "The loop has been completed \n"
					$WindowDialog/output.set_text(output)
				if ops_result:
					if ops_result.get_string() == "-":
						if num2_result:
							if i == int(num1_result.get_string()) - int(num2_result.get_string()):
								output+= "The loop has been completed \n"
								$WindowDialog/output.set_text(output)
						else:
							$WindowDialog/output.set_text("Error")
					if ops_result.get_string() == "+":
						if num2_result:
							if i == int(num1_result.get_string()) + int(num2_result.get_string()):
								output+= "The loop has been completed \n"
								$WindowDialog/output.set_text(output)
						else:
							$WindowDialog/output.set_text("Error")
					if ops_result.get_string() == "*":
						if num2_result:
							if i == int(num1_result.get_string()) - int(num2_result.get_string()):
								output+= "The loop has been completed \n"
								$WindowDialog/output.set_text(output)
						else:
							$WindowDialog/output.set_text("Error")
			if $WindowDialog/output.get_text() == "0\n1\n2\n3\n4\n5\nThe loop has been completed \n":
				emit_signal("clear")
