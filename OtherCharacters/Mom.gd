extends KinematicBody2D

export(float) var speed = 100
var player = null
var move = Vector2.ZERO
var target = Vector2(276,326)

func _physics_process(delta):
	move = Vector2.ZERO
	
	if player == 1519:
		move = Vector2.ZERO
	else:
		move = position.direction_to(target) * speed
		
	move = move_and_slide(move)
	move = Vector2.ZERO


func _on_Area2D_area_shape_entered(area_id, area, area_shape, local_shape):
	player = area_id
