extends CanvasLayer

onready var list = $WindowDialog/Panel/ItemList
var inventory = preload("res://Resources/Menu/menu_asset/bag.png")
var Map1 = preload("res://Resources/Menu/menu_asset/quest.png")
var Map2 = preload("res://Resources/Menu/menu_asset/quest.png")
var Map3 = preload("res://Resources/Menu/menu_asset/quest.png")
var Map4 = preload("res://Resources/Menu/menu_asset/quest.png")
var Map5 = preload("res://Resources/Menu/menu_asset/quest.png")
var Map6 = preload("res://Resources/Menu/menu_asset/quest.png")
var exit = preload("res://Resources/Menu/menu_asset/door.png")
var player = preload("res://Resources/Menu/menu_asset/user.png")
var save = preload("res://Resources/Menu/menu_asset/save.png")
var menu_icons = [
player,
inventory,
Map1,
Map2,
Map3,
Map4,
Map5,
Map6,
save,
exit
]

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = File.new()
	file.open("res://Resources/Menu/main_menu.json", File.READ)
	var content = file.get_as_text()
	var menu = JSON.parse(content).result
	file.close()
	for i in range(0 , len(menu)):
		list.add_item(menu[str(i)].name, menu_icons[i], true)
		print(menu[str(i)].name)

func _on_ItemList_item_selected(index):
	print(index)
	if index == 0:
		$WindowDialog/Panel/Player_Info.popup()
	elif index == 1:
		$WindowDialog/Panel/Inventory.popup()
	elif index == 2:
		$WindowDialog/Panel/Map1.popup()
	elif index == 3:
		$WindowDialog/Panel/Map2.popup()
	elif index == 4:
		$WindowDialog/Panel/Map3.popup()
	elif index == 5:
		$WindowDialog/Panel/Map4.popup()
	elif index == 6:
		$WindowDialog/Panel/Map5.popup()
	elif index == 7:
		$WindowDialog/Panel/Map6.popup()
	elif index == 8:
		get_tree().quit()
		

func init_data():
	var file = File.new()
	file.open("res://problemSet_flowchart.json", File.READ)
	var data = file.get_as_text()
	var data_text = parse_json(data)
	for i in range(1, len(data_text.Problem_Set)):
		for k in range(0, len(data_text.Problem_Set[str(i)].flowchart)):
			return data_text.Problem_Set[str(i)].flowchart[k]

func _on_inventory_list_item_selected(index):
	#var data = init_data()
	var data = $WindowDialog/Panel/Inventory/inventory_list.get_item_text(index)
	var file = File.new()
	file.open("user://item_selected.dat", File.WRITE)
	var arr = []
	var to_file = {"item_selected": arr}
	arr.append(data)
	#print(len(data.Problem_Set[str(i)].flowchart[k]))
	print(data)
	file.store_line(to_json(to_file))
	file.close()
	
func item_selected():
	var file = File.new()
	file.open("user://item_selected.dat", File.READ)
	var data = file.get_as_text()
	file.close()
	var data_text = parse_json(data)
	
	if data_text:
		return data_text.item_selected[0]
	else:
		pass
