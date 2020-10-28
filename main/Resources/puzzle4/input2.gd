extends TextureButton

func input2():
	var file = File.new()
	file.open("res://problemSet_flowchart.json", File.READ)
	var data = file.get_as_text()
	var data_text = parse_json(data)
	return data_text.Problem_Set["4"].flowchart[3]
