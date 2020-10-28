extends "res://Resources/Mobs/MOB_BUG/mob_base.gd"

onready var visibility = VisibilityEnabler2D
var movetime = 0
var movetime_length = 15
var player
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	$anim.play("down_walk")

func _physics_process(delta):
	
	var v = Vector2()
	movement(delta)
	
	if player:
		v = (player.position - position).normalized() * speed
		v = move_and_collide(v * delta)
	else:
		v = null
	if movetime > 0:
		movetime -= 1
	if movetime == 0 || is_on_wall():
		motion = movement_loop()
		movetime = movetime_length

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		player = body
	else:
		pass


func _on_Area2D_body_exited(body):
	if body.get_name() == "Player":
		player = null
	else:
		pass

func spawn():
	if die():
		print("spawn")

func _on_Timer_timeout():
	spawn()

func _on_up_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(atk)
	else:
		pass


func _on_up_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("up_atk")
	else:
		pass

func _on_up_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("up_walk")
	else:
		pass


func _on_down_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(atk)
	else:
		pass

func _on_down_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("down_atk")
	else:
		pass

func _on_down_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("down_walk")
	else:
		pass

func _on_left_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(atk)
	else:
		pass


func _on_left_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("left_atk")
	else:
		pass

func _on_left_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("left_walk")
	else:
		pass

func _on_right_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(atk)
	else:
		pass


func _on_right_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("right_atk")
	else:
		pass

func _on_right_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("right_walk")
	else:
		pass
		
#CODE FOR BOSS


func _on_detection_body_entered(body):
	if body.get_name() == "Player":
		player = body
	else:
		pass


func _on_detection_body_exited(body):
	if body.get_name() == "Player":
		player = null
	else:
		pass


func _on_down_attack_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(boss_attack)
	else:
		pass




func _on_down_attack_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("down_atk")
	else:
		pass


func _on_down_attack_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("down_walk")
	else:
		pass



func _on_left_attack_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(boss_attack)
	else:
		pass


func _on_left_attack_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("left_atk")
	else:
		pass


func _on_left_attack_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("left_walk")
	else:
		pass



func _on_right_attack_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(boss_attack)
	else:
		pass


func _on_right_attack_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("right_atk")
	else:
		pass
	


func _on_right_attack_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("right_walk")
	else:
		pass


func _on_up_attack_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(boss_attack)
	else:
		pass


func _on_up_attack_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("up_atk")
	else:
		pass



func _on_up_attack_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("up_walk")
	else:
		pass



func _on_VisibilityEnabler2D_screen_entered():
	pass # Replace with function body.

#CODE FOR NEW BOSS


func _on_nb_detection_body_entered(body):
	if body.get_name() == "Player":
		player = body
	else:
		pass


func _on_nb_detection_body_exited(body):
	if body.get_name() == "Player":
		player = null
	else:
		pass

func _on_nb_down_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(nb_attack)
	else:
		pass



func _on_nb_down_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("down_atk")
	else:
		pass

func _on_nb_down_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("down_walk")
	else:
		pass


func _on_nb_up_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(nb_attack)
	else:
		pass


func _on_nb_up_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("up_atk")
	else:
		pass



func _on_nb_up_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("up_walk")
	else:
		pass




func _on_nb_left_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(nb_attack)
	else:
		pass



func _on_nb_left_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("left_atk")
	else:
		pass



func _on_nb_left_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("left_walk")
	else:
		pass


func _on_nb_right_atk_body_entered(body):
	if body.get_name() == "Player":
		body.hurt(nb_attack)
	else:
		pass



func _on_nb_right_atk_range_body_entered(body):
	if body.get_name() == "Player":
		$anim.play("right_atk")
	else:
		pass

func _on_nb_right_atk_range_body_exited(body):
	if body.get_name() == "Player":
		$anim.play("right_walk")
	else:
		pass
