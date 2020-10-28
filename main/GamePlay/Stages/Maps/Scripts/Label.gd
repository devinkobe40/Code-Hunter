extends Label


# Called when the node enters the scene tree for the first time.
func PlayerHUD(level, hit_points, logic):
	text = """Level: %s
	Health: %s
	Logic: %s
	""" % [level,hit_points,logic]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
