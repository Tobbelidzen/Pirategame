extends Node
onready var playerpos1 = get_node("/root/Kinematicbody2D/Kinematicbody2D")


func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://bootybae.tscn")
		#playerpos1.playerset