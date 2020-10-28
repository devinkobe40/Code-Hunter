extends Area2D

export (String) var world_name
var loading_screen = preload("res://Resources/loading.tscn")
var current_scene
signal enter

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	$anim.play("idle")
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	print(current_scene)

func _on_Portal_body_entered(body):
	
	if body.get_name() == "Player":
		emit_signal("enter")
		#print("body entered")
		get_tree().change_scene(world_name)	

func _on_sensor_body_entered(body):
	$loading/Popup.popup_centered()
