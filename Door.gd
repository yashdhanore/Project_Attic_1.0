extends Area2D

export (PackedScene) var target_scene

#onready var key_body = get_node("/root/Stage1/Player")
#var key_new = load ("res://key.gd")

func _ready():
 connect( "body_entered" ,self , "body_entered")

func _input(event):
	if event.is_action_pressed("enter_door"):
		#get_parent().get_node("Player").keys
		#print(get_parent().name)
		print ("key in player " + str(get_parent().get_node("Player").keys))
		#print ("key in doorgd " + str(key_new.get_key()))
		#if get_overlapping_bodies().size() >=  2 && get_parent().get_node("Player").keys>0:
			#event.key-=1
			#queue_free()
			#next_level()
			

func next_level():
	var ERR = get_tree().change_scene_to(target_scene)

	
	

	
