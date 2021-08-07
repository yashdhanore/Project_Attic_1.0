extends KinematicBody2D

export(float) var speed = 100
var player = null
var move = Vector2.ZERO
onready var anim = get_node("AnimatedSprite/AnimationPlayer")
var target = Vector2(282,315)
var play = true

func _physics_process(delta):
	if play and player == 1509:
		anim.play("enter")
		play = false
	
func _on_Area2D_area_shape_entered(area_id, area, area_shape, local_shape):
	player = area_id
