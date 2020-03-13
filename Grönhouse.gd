extends MinKontroll
onready var intpoint = get_child(0)
onready var sendpos = get_node("..")

	
func _gui_input(event):
	sendpos.musvar = 1
	if event.is_action_pressed("click"):
		sendpos.point = intpoint.position
		print("Intpoint pos:")
		print(intpoint.position)
		print("Mouse Pos:")
		print(get_global_mouse_position())
		if player.position == intpoint.position:
			print("funkar")
	