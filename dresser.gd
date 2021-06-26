extends Interactive

func onEnter():
	$Label.show()
	
func onInput(event: InputEvent):
	if get_node_or_null('DialogNode') == null:
		if event.is_action_pressed("action") and interacting:
			get_tree().paused = true  
			var dialog = Dialogic.start('timeline-8')
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect("timeline_end",self,'unpause')
			add_child(dialog)

func unpause(timeline_name):
	get_tree().paused = false       #insert dialogue box here
		
func onExit():
	$Label.hide()
	
