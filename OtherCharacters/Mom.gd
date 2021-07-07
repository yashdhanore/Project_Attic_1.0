extends KinematicBody2D

export(float) var speed = 100
var player = null
var move = Vector2.ZERO
var target = Vector2(276,326)

func _on_Area2D_area_entered(area):
	player = get_parent().get_name()
	
func _physics_process(delta):
	move = Vector2.ZERO
	
	if player == null:
		move = Vector2.ZERO
	else:
		move = position.direction_to(target) * speed
	
	move = move_and_slide(move) 


