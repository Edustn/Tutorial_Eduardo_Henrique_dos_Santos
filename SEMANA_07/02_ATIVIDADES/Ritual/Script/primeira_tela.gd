extends Control


#start
func _on_startBtn_pressed():
	#vai para a proxima tela
	get_tree().change_scene("res://Cenas/jogo1.tscn")
	
	
#control
func _on_controlBtn_pressed():
#	 aparecer menu de controle
	var controlScreen = load("res://Cenas/ControlScreens.tscn").instance()
	#voltar ao menu
	get_tree().current_scene.add_child(controlScreen) 

func _on_quitBtn_pressed():
#	sai/fecha do jogo
	get_tree().quit()  


#objetivo
func _on_startBtn2_pressed(): 
#	aparecer menu de objetivo
	var controlScreen = load("res://Cenas/Objective.tscn").instance()
#	  voltar ao menu
	get_tree().current_scene.add_child(controlScreen)
