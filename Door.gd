extends Area2D

export (PackedScene) var target_scene

func _ready():
 connect( "body_entered",self , "body_entered")

func _input(body):
	if body.is_action_pressed("enter_door"):
		print (get_overlapping_bodies().size())
		print (body.get("key"))
		#if get_overlapping_bodies().size() > 2 && event.get("key")>0:
			#event.key-=1
			#queue_free()
			#next_level()

func next_level():
	var ERR = get_tree().change_scene_to(target_scene)

	

	
