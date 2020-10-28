extends "res://Resources/item_asset/problemset_data.gd"

func get_item():
	
	randomize()
	init_data()
	for i in range(1 , len(data_text.Problem_Set)):
		var value = randi() % len(data_text.Problem_Set)
		return data_text.Problem_Set[str(value + 1)].flowchart[randi() % data_text.Problem_Set[str(value + 1)].flowchart.size()]

func _on_Scroll_body_entered(body):
	
	if body.get_name() == "Player":
		store(get_item())
		#should be collision disabled
		body.toInventory()

func _ready():
	#print(get_item())
	print(init_data())