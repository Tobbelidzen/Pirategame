extends MinKontroll

onready var intpoint = get_child(0)
onready var sendpos = get_node("..")


func _gui_input(event):
	sendpos.musvar = 1
	sendpos.point = intpoint.position
	if event.is_action_pressed("click"):
		if player.position == intpoint.position:
			print("Funkar")