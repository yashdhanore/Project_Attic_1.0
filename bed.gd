extends Interactive

func onEnter():
	$Label.show()
	
func onInput(event: InputEvent):
	if event.is_action_pressed("action"):
		print("Hello")
		
func onExit():
	$Label.hide()
	
