extends Interactive

func onEnter():
	$Label.show()
	
func _input(event):
	if event.is_action_pressed("game_usage"):
		find_and_use_dialogue()
		
func find_and_use_dialogue():
	var dialogue_player = get_node_or_null("DialoguePlayer")
	
	if dialogue_player:
		dialogue_player.play()
		
func onExit():
	$Label.hide()
	
