extends CanvasLayer

onready var start = $WindowDialog/Panel/start
onready var input = $WindowDialog/Panel/input
onready var process1 = $WindowDialog/Panel/process1
onready var process2 = $WindowDialog/Panel/process2
onready var decision = $WindowDialog/Panel/decision
onready var return1 = $WindowDialog/Panel/return1
onready var end = $WindowDialog/Panel/exit

signal clear

func _ready():
	var d = init_data()
	$WindowDialog/Panel/RichTextLabel.set_text(str(d))

func init_data():
	var file = File.new()
	file.open("res://problemSet_flowchart.json", File.READ)
	var data = file.get_as_text()
	var data_text = parse_json(data)
	return data_text.Problem_Set["9"].description

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

func _on_process1_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/process1/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(process1.process1()):
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

func _on_process2_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/process2/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(process2.process2()):
			print("true")
		else:
			print("false")

func _on_exit_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/exit/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(end.end()):
			print("true")
		else:
			print("false")

func _on_return1_toggled(button_pressed):
	if button_pressed:
		$WindowDialog/Panel/return1/Label.set_text(str(Menu.item_selected()))
		if str(Menu.item_selected()) == str(return1.return1()):
			print("true")
		else:
			print("false")

func _on_Button_pressed():
	if $WindowDialog/Panel/start/Label.get_text() == str(start.start()):
		if $WindowDialog/Panel/input/Label.get_text() == str(input.input()):
			if $WindowDialog/Panel/process1/Label.get_text() == str(process1.process1()):
				if $WindowDialog/Panel/process2/Label.get_text() == str(process2.process2()):
					if $WindowDialog/Panel/decision/Label.get_text() == str(decision.decision()):
						if $WindowDialog/Panel/return1/Label.get_text() == str(return1.return1()):
							if $WindowDialog/Panel/exit/Label.get_text() == str(end.end()):
								emit_signal("clear")