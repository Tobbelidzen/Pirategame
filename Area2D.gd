extends Area2D
#(144.171997, 553.682983)


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

#ange funktion av knapp här
func on_click():
	print("ehcek")
		