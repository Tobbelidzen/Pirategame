extends KinematicBody2D

export (int) var speed = 50

var velocity = Vector2()
#var upkey = 0
func get_input():
    velocity = Vector2()
    if Input.is_action_pressed('ui_right'):
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        velocity.x -= 1
    if Input.is_action_pressed('down'):
        velocity.y += 0
    if Input.is_action_pressed("ui_up"):
        velocity.y -= 0
        #upkey = 1
    velocity = velocity.normalized() * speed
    #print(speed)

func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)
	


func _on_Doorscene_body_entered(body):
	if Input.is_action_pressed("ui_up"):
		get_tree().change_scene("res://tavern.tscn")
		
func _on_Doorscene_body_exited(body):
	print("im out yo")
