extends KinematicBody2D

export(float) var speed = 50
var player = null
var move = Vector2.ZERO
var target = Vector2(276,326)

func _physics_process(delta):
	move = Vector2.ZERO
	
	if player!=null:
		move = position.direction_to(target) * speed
	else:
		move = Vector2.ZERO
	
	move = move_and_slide(move) 

func _on_Area2D_body_entered(body):
	if body!=self:
		player = body

func _on_Area2D_body_exited(body):
	player = null
