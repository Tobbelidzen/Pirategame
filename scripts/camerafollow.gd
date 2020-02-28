extends Camera2D

onready var fake = get_node("..")
var camerafollow

func _process(delta):
	
	camerafollow=get_camera_position()
	fake.position=camerafollow
