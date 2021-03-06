extends CanvasLayer

onready var start = $WindowDialog/Panel/start
onready var input = $WindowDialog/Panel/input
onready var process = $WindowDialog/Panel/process
onready var output = $WindowDialog/Panel/decision
onready var end = $WindowDialog/Panel/end
signal clear


func init_data():
	var file = File.new()
	file.open("res://problemSet_flowchart.json", File.READ)
	var data = file.get_as_text()
	var data_text = parse_json(data)
	return data_text.Problem_Set["1"].description

func _ready():
	var d = init_data()
	print(d)
	$WindowDialog/Panel/RichTextLabel.set_text(str(d))

func _on_start_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/start/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(start.start()):
			pass
		else:
			print("false")

func _on_input_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/input/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(input.input()):
			pass
		else:
			print("false")

func _on_process_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/process/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(process.process()):
			pass
		else:
			print("false")

func _on_decision_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/decision/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(output.decision()):
			pass
		else:
			print("false")

func _on_end_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/end/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(end.end()):
			pass
		else:
			print("false")

func _on_Button_pressed():
	if $WindowDialog/Panel/start/Label.get_text() == str(start.start()):
		if $WindowDialog/Panel/input/Label.get_text() == str(input.input()):
			if $WindowDialog/Panel/process/Label.get_text() == str(process.process()):
				if $WindowDialog/Panel/decision/Label.get_text() == str(output.decision()):
						if $WindowDialog/Panel/end/Label.get_text() == str(end.end()):
							emit_signal("clear")
