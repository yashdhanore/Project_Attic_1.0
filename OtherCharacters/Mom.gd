extends KinematicBody2D

export(float) var speed = 100
var player = null
var move = Vector2.ZERO
onready var node = get_node("AnimatedSprite/AnimationPlayer")
var target = Vector2(282,315)
var can_move = true
#var pos = node.instance()

func _physics_process(delta):
	
	if !global_position.is_equal_approx(to_local(target)):
		if player == 1519:
			move = Vector2.ZERO
		else:
			node.play("Enter")
	
func move_to_target_pos():
		print(position.direction_to(target))
		move = position.direction_to(target) * speed
	
	#print(global_position)
	
func _on_Area2D_area_shape_entered(area_id, area, area_shape, local_shape):
	player = area_id
