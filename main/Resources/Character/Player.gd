extends KinematicBody2D

signal health_changed

var state_machine
var motion = Vector2()
var context

#PLAYER STATS
export (int) var speed = 125
export (int) var hit_points = 100
export (int) var logic = 100
export (int) var armor = 2
export (int) var level = 1
export (int) var damage = 0

onready var item = $Control/WindowDialog/Panel/Inventory/inventory_list
onready var item_logo = preload("res://Resources/item_asset/8.png")


#EXPERIENCE POINTS
var experience = 0
var total_experience = 0
#var experience_required = get_experience_required(level + 1)

func _ready():
	context = get_tree().get_current_scene().get_name()
	state_machine = $AnimationTree.get("parameters/playback")
	state_machine.start("idle_down")
	print(context)
	toInventory()

#func get_experience_required(level):
#	return round(pow(level, 1.8) + level * 4)

#CONTROL
func get_input():
	motion = Vector2()
	var current = state_machine.get_current_node()
	
	if Input.is_action_just_pressed("ui_menu"):
		$Control/WindowDialog.popup()
		$menu_sound.play()
		
	
	
	if Input.is_action_pressed("ui_left"):
		motion = Vector2(-1, 0)
		state_machine.travel("walk_left")
		if Input.is_action_just_pressed("ui_left"):
			$footsteps.play()
		
		
	if Input.is_action_pressed("ui_right"):
		motion = Vector2(1, 0)
		state_machine.travel("walk_right")
		if Input.is_action_just_pressed("ui_right"):
			$footsteps.play()
	
	if Input.is_action_pressed("ui_up"):
		
		motion = Vector2(0, -1)
		state_machine.travel("walk_up")
		if Input.is_action_just_pressed("ui_up"):
			$footsteps.play()
	if Input.is_action_pressed("ui_down"):
		
		motion = Vector2(0, 1)
		state_machine.travel("walk_down")
		if Input.is_action_just_pressed("ui_down"):
			$footsteps.play()
	
	
	#DIRECTION OF THE SPRITE
	if Input.is_action_just_released("ui_up"):
			state_machine.travel("idle_up")
			$footsteps.stop()
	
	if Input.is_action_just_released("ui_left"):
			state_machine.travel("idle_left")
			$footsteps.stop()
	
	if Input.is_action_just_released("ui_down"):
			state_machine.travel("idle_down")
			$footsteps.stop()
	
	if Input.is_action_just_released("ui_right"):
			state_machine.travel("idle_right")
			$footsteps.stop()
			
	
	#if context == "town":
		#pass
	else:
		if Input.is_action_pressed("atk"):
			match current:
				"idle_up":
					state_machine.travel("atk_up")
					$slash.play()
				
				"idle_down":
					state_machine.travel("atk_down")
					$slash.play()
				"idle_left":
					state_machine.travel("atk_left")
					$slash.play()
				"idle_right":
					state_machine.travel("atk_right")
					$slash.play()
	motion += motion.normalized() * speed

#PROCESS 
func _physics_process(delta):
	get_input()
	regen(delta)
	move_and_collide(motion * delta)


# ATTACK
func _on_Slash_Hitbox_down_body_entered(body):
	
	if body.get_name() == "TileMap":
		pass
	elif body.get_name() == "TileMap1":
		pass
	elif body.get_name() == "TileMap2":
		pass
	elif body.get_name() == "TileMap3":
		pass
	elif body.get_name() == "TileMap4":
		pass
	elif body.get_name() == "TileMap5":
		pass
	elif body.get_name() == "TileMap6":
		pass
	elif body.get_name() == "TileMap7":
		pass
	elif body.get_name() == "TileMap8":
		pass
	elif body.get_name() == "Player":
		pass
	elif body.is_in_group("door"):
		body.interact()
	elif body.is_in_group("chest"):
        body.interact()
	elif body.is_in_group("npc"):
        body.interact()
	elif body.is_in_group("npc1"):
        pass
	else:
		body.take_damage(damage)

func _on_Slash_Hitbox_left_body_entered(body):
	
	if body.get_name() == "TileMap":
		pass
	elif body.get_name() == "TileMap1":
		pass
	elif body.get_name() == "TileMap2":
		pass
	elif body.get_name() == "TileMap3":
		pass
	elif body.get_name() == "TileMap4":
		pass
	elif body.get_name() == "TileMap5":
		pass
	elif body.get_name() == "TileMap6":
		pass
	elif body.get_name() == "TileMap7":
		pass
	elif body.get_name() == "TileMap8":
		pass
	elif body.get_name() == "Player":
		pass
	elif body.is_in_group("door"):
		body.interact()
	elif body.is_in_group("chest"):
        body.interact()
	elif body.is_in_group("npc"):
        body.interact()
	elif body.is_in_group("npc1"):
        pass
	else:
		body.take_damage(damage)

func _on_Slash_Hitbox_right_body_entered(body):
	
	if body.get_name() == "TileMap":
		pass
	elif body.get_name() == "TileMap1":
		pass
	elif body.get_name() == "TileMap2":
		pass
	elif body.get_name() == "TileMap3":
		pass
	elif body.get_name() == "TileMap4":
		pass
	elif body.get_name() == "TileMap5":
		pass
	elif body.get_name() == "TileMap6":
		pass
	elif body.get_name() == "TileMap7":
		pass
	elif body.get_name() == "TileMap8":
		pass
	elif body.get_name() == "Player":
		pass
	elif body.is_in_group("door"):
		body.interact()
	elif body.is_in_group("chest"):
        body.interact()
	elif body.is_in_group("npc"):
        body.interact()
	elif body.is_in_group("npc1"):
        pass
	else:
		body.take_damage(damage)

func _on_Slash_Hitbox_up_body_entered(body):
	
	if body.get_name() == "TileMap":
		pass
	elif body.get_name() == "TileMap1":
		pass
	elif body.get_name() == "TileMap2":
		pass
	elif body.get_name() == "TileMap3":
		pass
	elif body.get_name() == "TileMap4":
		pass
	elif body.get_name() == "TileMap5":
		pass
	elif body.get_name() == "TileMap6":
		pass
	elif body.get_name() == "TileMap7":
		pass
	elif body.get_name() == "TileMap8":
		pass
	elif body.get_name() == "Player":
		pass
	elif body.is_in_group("door"):
		body.interact()
	elif body.is_in_group("chest"):
        body.interact()
	elif body.is_in_group("npc"):
        body.interact()
	elif body.is_in_group("npc1"):
        pass
	else:
		body.take_damage(damage)

# HURT
func hurt(damage):
	if hit_points <= 0:
		die()
	hit_points -= damage
	emit_signal("health_changed", hit_points)

#REGEN
func regen(delta):
	var regen = 1 * delta
	
	if hit_points <= 100:
		hit_points += regen
		emit_signal("health_changed", hit_points)

func init_data():
	var file = File.new()
	file.open("res://problemSet_flowchart.json", File.READ)
	var data = file.get_as_text()
	var parse_data = parse_json(data)
	#for i in range(1, len(parse_data.Problem_Set)):
	#	for k in range(1, len(parse_data.Problem_Set[str(i)].flowchart)):
	#		print(parse_data.Problem_Set[str(i)].flowchart[k])
	#		return parse_data.Problem_Set[str(i)].flowchart[k]
	return parse_data

func toInventory():
	var b = init_data()
	
	for i in range(1, len(b.Problem_Set)):
		for k in range(0, len(b.Problem_Set[str(i)].flowchart)):
			
			item.add_item(str(b.Problem_Set[str(i)].flowchart[k]), item_logo, true)
	#return b

func die():
	queue_free()