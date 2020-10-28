extends CanvasLayer
onready var input2 = $WindowDialog/Panel/input2
onready var input3 = $WindowDialog/Panel/input3
onready var start = $WindowDialog/Panel/start
onready var input = $WindowDialog/Panel/input
onready var decision = $WindowDialog/Panel/decision
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
	return data_text.Problem_Set["8"].description

func _on_start_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/start/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(start.start()):
			print("true")
		else:
			print("false")

func _on_input_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/input/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(input.input()):
			print("true")
		else:
			print("false")

func _on_decision_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/decision/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(decision.decision()):
			print("true")
		else:
			print("false")

func _on_end_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/end/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(end.end()):
			print("true")
		else:
			print("false")

func _on_Button_pressed():
	if $WindowDialog/Panel/start/Label.get_text() == str(start.start()):
		if $WindowDialog/Panel/input/Label.get_text() == str(input.input()):
			if $WindowDialog/Panel/decision/Label.get_text() == str(decision.decision()):
				if $WindowDialog/Panel/input2/Label.get_text() == str(input2.input2()):
					if $WindowDialog/Panel/input3/Label.get_text() == str(input3.input3()):
						if $WindowDialog/Panel/end/Label.get_text() == str(end.end()):
							emit_signal("clear")


func _on_input2_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/input2/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(input2.input2()):
			print("true")
		else:
			print("false")

func _on_input3_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/input3/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(input3.input3()):
			print("true")
		else:
			print("false")
