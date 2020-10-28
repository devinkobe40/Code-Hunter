extends Area2D

var file = File.new()
var data 
var data_text
var inventory = []
var inv = {
"flowchart_item" : inventory
}

func init_data():
	file.open("res://problemSet_flowchart.json", File.READ)
	data = file.get_as_text()
	file.close()
	data_text = parse_json(data)
	#return data_text.Problem_Set["1"].flowchart[randi() % data_text.Problem_Set["4"].flowchart.size()]

func store(item):
	file.open("user://inventory.dat", File.WRITE)
	
	inventory.append(item)
	file.store_line(to_json(inv))
	file.close()