extends Area2D
export (String) var world_name

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	$anim.play("idle")


func _on_portal_map_body_entered(body):
	if body.get_name() == "Player":
		#print("body entered")
		get_tree().change_scene(world_name)