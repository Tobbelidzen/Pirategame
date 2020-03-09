extends Area2D

func get_interact_pos():
	var line = LineShape2D.new()
	add_shape(line)
	line.set_normal(get_local_mouse_position())
	if line :
		if has_node("interactpos"):
			return get_node("interactpos").get_global_position()
	else:
		return get_local_mouse_position()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
