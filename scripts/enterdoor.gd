extends Area2D

onready var playerenter = get_node("res://player.tscn")
var player_enter = false


#func _ready():
    #connect("body_enter", self, "n_enemy_body_enter")


func _on_Area2D_body_entered(body):
	if "PlayerBody" in body.name:
		player_enter = true
	if player_enter == true:
		print("whacky")