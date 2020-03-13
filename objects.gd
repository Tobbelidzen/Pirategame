class_name MinKontroll
extends Control

var musvar = 0
var point = Vector2()
onready var movescript = get_node("/root/Island3/Navigation2D")
onready var player = get_node("/root/Island3/Navigation2D/Character")

func _input(event):
	if not event.is_action_pressed("click"):
		musvar = 0
		point = Vector2()
		return
	if musvar == 1:
		movescript.mus = 1
		movescript.get_interact_pos(point)
		point = Vector2()


