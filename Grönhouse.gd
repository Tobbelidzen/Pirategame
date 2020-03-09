extends Control


onready var point = get_node("interactpos")
onready var movescript = get_node("../../../Navigation2D")

func _gui_input(event):
	if event.is_action_pressed("click"):
		movescript.get_interact_pos(point.global_position)
	
