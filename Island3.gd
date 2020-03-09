extends Node2D

func get_interact_pos():
	var line = LineShape2D.new()
	get_node("Areamus").add_shape(line)
	line.set_normal(get_local_mouse_position())
	if "interactpos":
		if has_node("interactpos"):
			return get_node("interactpos").get_global_position()
	else:
		return get_local_mouse_position()


func _ready():
#Byta map
	pass

