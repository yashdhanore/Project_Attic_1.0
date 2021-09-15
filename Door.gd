extends Area2D

export (PackedScene) var target_scene

var key_body = load ("res://Player/Player.gd").new()
var key_new = load ("res://key.gd").new()

func _ready():
 connect( "body_entered" ,self , "body_entered")

func _input(event):
	if event.is_action_pressed("enter_door"):
		print (get_overlapping_bodies().size())
		print ("key value passed from player " + str(key_body.keys))
		print ("key value from doorgd " + str(key_new.get_key()))
		#print(key_val.get_key())
		#if get_overlapping_bodies().size() >=  2 && event.get("key")>0:
			#event.key-=1
			#queue_free()
			#next_level()
			

func next_level():
	var ERR = get_tree().change_scene_to(target_scene)

func key_val():
	return key_body.keys
	
	

	
