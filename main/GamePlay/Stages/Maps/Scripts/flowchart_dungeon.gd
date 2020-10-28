extends Node2D


var current_hp
onready var hp_bar = $Player/GUI/Bars/HpBar/TextureProgress
onready var max_hp = $Player.hit_points

const enemy = preload("res://Resources/Mobs/MOB_BUG/bug.tscn")

func _ready():
	
	
	current_hp = max_hp
	hp_bar.max_value = current_hp
	hp_bar.value = hp_bar.max_value


		
func spawn_mobs():
	randomize()
	
	
		
	
func _on_Timer_timeout():
	spawn_mobs()

func _on_Player_health_changed(hit_points):
	hp_bar.value = hit_points
