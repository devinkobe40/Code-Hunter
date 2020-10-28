extends CanvasLayer
signal clear

func _ready():
	
	$WindowDialog/workspace.set_readonly(3)
	print($WindowDialog/workspace.is_readonly())


func _on_run_pressed():
	var output = $WindowDialog/workspace/LineEdit.get_text()
	$WindowDialog/ouput.set_text(output)
	if output == "str":
		$WindowDialog/ouput.set_text("Hello World")
		emit_signal("clear")
	var temp = output.lstrip("\"")
	var final_output = temp.rstrip("\"")
	print(final_output.find("num1"))
	if output.begins_with("\""):
		if output.ends_with("\""):
			$WindowDialog/output.set_text(str(final_output))
		else:
			$WindowDialog/output.set_text("name '"+output+"' is not defined")
