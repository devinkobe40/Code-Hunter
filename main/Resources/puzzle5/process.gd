extends TextureButton

func process():
	var file = File.new()
	file.open("res://problemSet_flowchart.json", File.READ)
	var data = file.get_as_text()
	var data_text = parse_json(data)
	file.close()
	return data_text.Problem_Set["5"].flowchart[2]
