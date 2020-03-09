extends KinematicBody2D
var local = 0
var playerpos = (Vector2())
onready var globalposition = get_node("/root/Global")
export (int) var speed = 50
var velocity = Vector2()


func ready():
	set_position(globalposition.get_back)



func get_input():
    velocity = Vector2()
    if Input.is_action_pressed('ui_right'):
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        velocity.x -= 1
    if Input.is_action_pressed('ui_down'):
        velocity.y += 0
    if Input.is_action_pressed("ui_up"):
        velocity.y -= 0
        #upkey = 1
    velocity = velocity.normalized() * speed
    #print(speed)

func _physics_process(delta):
	#playerpos = Vector2()
	print(playerpos)
	get_input()
	velocity = move_and_slide(velocity)
	#if Input.is_action_pressed("ui_down"):
		#playerset
	if local > 0 && Input.is_action_pressed("ui_up"):
		get_tree().change_scene("res://tavern.tscn")

func _on_Doorscene_body_entered(body):
	playerpos = get_global_position()
	print(playerpos)
	local = 1
	print(local)
func _on_Doorscene_body_exited(body):
	
	#print(playerset)
	local = 0
	print(local)
	

