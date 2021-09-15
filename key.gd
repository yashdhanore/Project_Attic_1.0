extends Area2D

var value = 0

func _ready():
	connect( "body_entered", self, "body_entered")

func body_entered(body):
	if body.name == "Player":
		body.keys +=1  
		value = body.keys
		print ("keys in keygd " + str(body.keys))
		get_key()
		queue_free()

func get_key():
	return value
	
