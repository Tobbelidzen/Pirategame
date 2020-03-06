extends Navigation2D

export(float) var character_speed = 300.0
var path = []
var interact = 0


func _process(delta):
	var walk_distance = character_speed * delta
	move_along_path(walk_distance)


func _input(event):
	if not event.is_action_pressed("click"):
		return
	_update_navigation_path($Character.position, get_interact_pos())


func move_along_path(distance):
	var last_point = $Character.position
	while path.size():
		var distance_between_points = last_point.distance_to(path[0])
		if distance <= distance_between_points:
			$Character.position = last_point.linear_interpolate(path[0], distance / distance_between_points)
			return
		distance -= distance_between_points
		last_point = path[0]
		path.remove(0)
	$Character.position = last_point
	set_process(false)


func _update_navigation_path(start_position, end_position):
	path = get_simple_path(start_position, end_position, true)
	path.remove(0)
	set_process(true)


func get_interact_pos():
	if get_tree().has_group("Object"):
		
		if get_local_mouse_position():
			if has_node("interactpos"):
				return get_node("interactpos").get_global_position()
		else:
			return get_local_mouse_position()
			
#func get_interact_pos():
#	if interact == 1:
#		interact = 0
#		var nearestinteract = get_global_mouse_position().distance_to(get_node().get_global_pos()); 
#		print(interact)
#		return get_node("interactpos").get_global_position()
#	else:
#		return get_local_mouse_position()
		

#func _on_Area2D_input_event(viewport, event, shape_idx):
#	if event.is_action_pressed("click"):
#		print("yalla")
#		interact = 1
#		print(interact)
		
