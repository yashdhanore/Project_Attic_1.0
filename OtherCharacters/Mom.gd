extends KinematicBody2D

export(float) var speed = 100
var player = null
var move = Vector2.ZERO
onready var anim = get_node("AnimatedSprite/AnimationPlayer")
var target = Vector2(282,315)
var play = true
onready var dialogue = Dialogic.start('walk-in')

func _physics_process(delta):
	if play and player == 1514:
		anim.play("enter")
		play = false
		add_child(dialogue)
	
func _on_Area2D_area_shape_entered(area_id, area, area_shape, local_shape):
	player = area_id
	#print(player)
