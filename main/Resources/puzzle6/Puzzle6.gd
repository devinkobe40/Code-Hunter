extends CanvasLayer

onready var start = $WindowDialog/Panel/start
onready var input = $WindowDialog/Panel/input
onready var output = $WindowDialog/Panel/output
onready var end = $WindowDialog/Panel/end

signal clear

func _ready():
	var d = init_data()
	$WindowDialog/Panel/RichTextLabel.set_text(str(d))

func init_data():
	var file = File.new()
	file.open("res://problemSet_flowchart.json", File.READ)
	var data = file.get_as_text()
	var data_text = parse_json(data)
	return data_text.Problem_Set["6"].description

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

func _on_output_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/output/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(output.output()):
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
			if $WindowDialog/Panel/output/Label.get_text() == str(output.output()):
				if $WindowDialog/Panel/end/Label.get_text() == str(end.end()):
					emit_signal("clear")
