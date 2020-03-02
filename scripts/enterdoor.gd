extends Area2D

onready var player = get_node("/root/bootybae/player")

func _ready():
	connect("body_entered",self,"body_entered")
	player.speed=100

func body_entered(body):
	if body.name == "player" && Input.is_action_pressed('up'):
		print("treterktoeorj")