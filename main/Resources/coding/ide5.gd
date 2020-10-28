extends CanvasLayer
signal clear


func _on_Button_pressed():
	var var1_content = $WindowDialog/workspace/var1.get_text()
	var var2_content = $WindowDialog/workspace/var2.get_text()
	var var3_content = $WindowDialog/workspace/var3.get_text()
	
	var regex = RegEx.new()
	regex.compile("llist.head")
	var regex2 = RegEx.new()
	regex2.compile("llist.head.next")
	var regex3 = RegEx.new()
	regex3.compile("second.next")
	
	var result1 = regex.search(var1_content)
	var result2 = regex2.search(var2_content)
	var result3 = regex3.search(var3_content)
	#prints the result 
	var string_result = ""
	#sample input
	var node1 = 1
	var node2 = 2
	var node3 = 3
	if result1 == null:
		$WindowDialog/output.set_text("Error in line 15: "+var1_content+" is not defined")
	elif result1:
		string_result += str(node1)+" "
		if result2 == null:
			$WindowDialog/output.set_text("Error in line 18: "+var2_content+" is not defined")
		elif result2:
			string_result += str(node2)+" "
			if result3 == null:
				$WindowDialog/output.set_text("Error in line 20: "+var3_content+" is not defined")
			elif result3:
				string_result += str(node3)+" "
				if string_result:
					$WindowDialog/output.set_text(string_result)
	
	if $WindowDialog/output.get_text() == "1 2 3 ":
		emit_signal("clear")