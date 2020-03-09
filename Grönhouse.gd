extends Control


onready var point = get_child(0)
onready var movescript = get_node("../../../Navigation2D")
onready var player = get_node("../../../Navigation2D/Character")

func _input(event):
	if event.is_action_pressed("click"):
		movescript.get_interact_pos(point.position)
		print(point.position)
		if player.position == point.position:
			print("funkar")
	
