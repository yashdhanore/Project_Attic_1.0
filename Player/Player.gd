extends KinematicBody2D

var direction = Vector2()
const TOP = Vector2(0,-1)
const DOWN = Vector2(0,1)
const LEFT = Vector2(-1,0)
const RIGHT = Vector2(1,0)
var speed = 0
const MAX_SPEED = 7000
var velocity = Vector2()

func _physics_process(delta):
	var is_moving = Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_down") or Input.is_action_pressed("ui_left")
	
	direction = Vector2()
	if is_moving:
		speed = MAX_SPEED
		
		if Input.is_action_pressed("ui_up"):
			direction = TOP
		elif Input.is_action_pressed("ui_down"):
			direction = DOWN
		elif Input.is_action_pressed("ui_left"):
			direction = LEFT
		elif Input.is_action_pressed("ui_right"):
			direction = RIGHT
	else:
		speed = 0
	
	velocity = speed * direction.normalized() * delta
	
	move_and_slide(velocity)
