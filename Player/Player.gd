extends KinematicBody2D

export (int) var speed = 75

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		$AnimatedSprite.play("WalkRight")
		$AnimatedSprite.play("WalkLeft")
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		$AnimatedSprite.play("WalkFront")
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		$AnimatedSprite.play("WalkBack")
	velocity = velocity.normalized() * speed
	
	if Input.is_action_just_released("ui_right"):
		$AnimatedSprite.play("IdleRight")
	if Input.is_action_just_released("ui_left"):
		$AnimatedSprite.play("IdleLeft")
	if Input.is_action_just_released("ui_up"):
		$AnimatedSprite.play("IdleBack")
	if Input.is_action_just_released("ui_down"):
		$AnimatedSprite.play("IdleFront")
	
	if Input.is_action_pressed("ui_up") and (Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_left")):
		$AnimatedSprite.play("WalkBack")
	if Input.is_action_pressed("ui_down") and (Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_left")):
		$AnimatedSprite.play("WalkFront")
	

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
#
#    if Input.is_action_just_released("ui_right") and velocity == Vector2.ZERO :
#        $AnimatedSprite.play("IdleRight")
#    if Input.is_action_just_released("ui_right") :
#        input_buffer.erase(Vector2.RIGHT)
#    if Input.is_action_just_pressed("ui_left"):
#        input_buffer.append(Vector2.LEFT)
#        $AnimatedSprite.play("WalkLeft")
#    if Input.is_action_just_released("ui_left"):
#        input_buffer.erase(Vector2.LEFT)
#        $AnimatedSprite.play("IdleLeft")
#    if Input.is_action_just_pressed("ui_up"):
#        input_buffer.append(Vector2.UP)
#        $AnimatedSprite.play("WalkBack")
#    if Input.is_action_just_released("ui_up") :
#        input_buffer.erase(Vector2.UP)
#        $AnimatedSprite.play("IdleBack")
#    if Input.is_action_just_pressed("ui_down") :
#        input_buffer.append(Vector2.DOWN)
#        $AnimatedSprite.play("WalkFront")
#    if Input.is_action_just_released("ui_down"):
#        input_buffer.erase(Vector2.DOWN)
#        $AnimatedSprite.play("IdleFront")
