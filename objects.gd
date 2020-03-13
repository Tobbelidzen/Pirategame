class_name MinKontroll
extends Control

var musvar = 0
var point = Vector2()
onready var movescript = get_node("/root/Island3/Navigation2D")
onready var player = get_node("/root/Island3/Navigation2D/Character")

func _input(event):
	if musvar == 1:
		movescript.mus = 1
	if event.is_action_pressed("click"):
		movescript.get_interact_pos(point)
		point = Vector2()
		

