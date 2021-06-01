extends Interactive

func onInput(event: InputEvent):
	if event.is_action_pressed("action"):
		print("Hello")
		
func onExit():
	print("Bye")
	
