extends Interactive

func onEnter():
	$Label.show()
	
func onInput(event: InputEvent):
	if event.is_action_pressed("action"):
		print("Hello")        #insert dialogue box here
		
func onExit():
	$Label.hide()
	
