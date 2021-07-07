extends KinematicBody2D

var direction = Vector2()
const TOP = Vector2(0,-1)
const DOWN = Vector2(0,1)
const LEFT = Vector2(-1,0)
const RIGHT = Vector2(1,0)
var speed = 0
const MAX_SPEED = 7000
var velocity = Vector2()
var input_buffer = [Vector2.ZERO]

func _physics_process(delta):
	var is_moving = Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_down") or Input.is_action_pressed("ui_left")
	
	direction = Vector2()
	if is_moving:
		speed = MAX_SPEED
		
		if Input.is_action_pressed("ui_up"):
			direction = TOP
			$AnimatedSprite.play("WalkBack")
			
		elif Input.is_action_pressed("ui_down"):
			direction = DOWN
			$AnimatedSprite.play("WalkFront")
		
		elif Input.is_action_pressed("ui_left"):
			direction = LEFT
			$AnimatedSprite.play("WalkLeft")
		
		elif Input.is_action_pressed("ui_right"):
			direction = RIGHT
			$AnimatedSprite.play("WalkRight")
			
	else:												#if not moving loop
		if Input.is_action_just_released("ui_up"):
			$AnimatedSprite.play("IdleBack")
		if Input.is_action_just_released("ui_down"):
			$AnimatedSprite.play("IdleFront")
		if Input.is_action_just_released("ui_left"):
			$AnimatedSprite.play("IdleLeft")
		if Input.is_action_just_released("ui_right"):
			$AnimatedSprite.play("IdleRight")
		speed = 0
	
	velocity = speed * direction.normalized() * delta
	
	move_and_slide(velocity)


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
