extends KinematicBody2D

export (int) var hit_points = 0
export (int) var atk = 0
export (int) var speed = 0
export (int) var boss_attack = 0
export (int) var nb_attack = 0

 

var current_hp 

var RIGHT = Vector2(1, 0)
var LEFT = Vector2(-1, 0)
var UP = Vector2(0, -1)
var DOWN = Vector2(0, 1)
var motion = Vector2()

func _ready():
	current_hp = hit_points


func movement(delta):
	var move = motion.normalized() * delta
	move_and_collide(move * speed)

func movement_loop():
	var rand = randi() % 4 + 1
	
	match rand:
		1:
			#$anim.play("up_walk")
			return UP
		2:
			#$anim.play("down_walk")
			return DOWN
		3:
			#$anim.play("left_walk")
			return LEFT
		4:
			#$anim.play("right_walk")
			return RIGHT
			
func take_damage(damage):
	current_hp -= rand_range(damage - 7, damage)
	var i = int(current_hp)
	
	if i <= 0:
		die()
		
	
	update_health(i)

func die():
	queue_free()


func update_health(new_health):
	var i = new_health
	print(i)
	
func spawn():
	pass