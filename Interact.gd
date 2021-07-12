extends Position2D

signal Change(interacting)

func _on_Area2D_body_entered(body):
	if body is Interactive:
		$Label.show()
		body.enter()


func _on_Area2D_body_exited(body):
	if body is Interactive:
		$Label.hide()
		body.exit()
