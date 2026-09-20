extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.game_over == true:
		$CanvasLayer/inGameScreen.visible = false
		$CanvasLayer/gameOverScreen.visible = true
		$CanvasLayer/inGameScreen/LabelScore.text = str(Global.score)
		$CanvasLayer/gameOverScreen/LabelGameOverScore.text = "Score: "+str(Global.score)
		


func _on_button_play_pressed() -> void:
	$CanvasLayer/startScreen.visible = false
	$CanvasLayer/chooseScreen.visible = true
	


func _on_button_ship_1_pressed() -> void:
	Global.choose_ship = 1
	$CanvasLayer/chooseScreen/ships/ship1.visible = true
	$CanvasLayer/chooseScreen/ships/ship2.visible = false
	$CanvasLayer/chooseScreen/ships/ship3.visible = false


func _on_button_ship_2_pressed() -> void:
	Global.choose_ship = 2
	$CanvasLayer/chooseScreen/ships/ship1.visible = false
	$CanvasLayer/chooseScreen/ships/ship2.visible = true
	$CanvasLayer/chooseScreen/ships/ship3.visible = false
	


func _on_button_ship_3_pressed() -> void:
	Global.choose_ship = 3
	$CanvasLayer/chooseScreen/ships/ship1.visible = false
	$CanvasLayer/chooseScreen/ships/ship2.visible = false
	$CanvasLayer/chooseScreen/ships/ship3.visible = true


func _on_button_ship_choosed_pressed() -> void:
	Global.game_on = true
	$CanvasLayer/chooseScreen.visible = false
	$CanvasLayer/inGameScreen.visible = true
	$CanvasLayer/chooseScreen.queue_free()
	


func _on_button_mute_pressed() -> void:
	Global.mute = !Global.mute
	if Global.mute == true:
		$CanvasLayer/inGameScreen/ButtonMute/LabelOff.visible = true
		$CanvasLayer/inGameScreen/ButtonMute/LabelOn.visible = false
	else:
		$CanvasLayer/inGameScreen/ButtonMute/LabelOff.visible = false
		$CanvasLayer/inGameScreen/ButtonMute/LabelOn.visible = true

func _on_button_menu_pressed() -> void:
	Global.rest_values()
	get_tree().reload_current_scene()
	print("test")

	
	
	
	
	
