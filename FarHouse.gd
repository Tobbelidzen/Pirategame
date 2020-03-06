extends Control

func _gui_input(event):
	if event.is_action_pressed("click"):
			print("Där är det grönt")


func _on_FHarea_body_entered(body):
	print("fungera")
	if _guievent.is_action_pressed("click"):
			print("Där är det grönt")