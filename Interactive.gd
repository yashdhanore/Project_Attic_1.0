extends StaticBody2D
class_name Interactive

var interacting = false

func enter():
	interacting = true
	onEnter()

func exit():
	interacting = false
	onExit()

func _input(event : InputEvent):
	if interacting:
		onInput(event)

func onEnter():
	pass

func onExit():
	pass

func onInput(event: InputEvent):
	pass

