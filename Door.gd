extends Area2D

export (PackedScene) var target_scene
func _ready():
	pass
	
func _input(event):
	if event.is_action_pressed(("action")):
		if get_overlapping_bodies().size() >2:
			next_level()

func next_level():
	var ERR = get_tree().change_scene_to(target_scene)
	
