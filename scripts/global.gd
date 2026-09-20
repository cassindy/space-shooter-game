extends Node

var game_over:bool = false
var game_on:bool = false
var score:int = 0
var choose_ship:int = 1
var mute:bool = false

func rest_values():
	game_over = false
	game_on = false
	score = 0
	choose_ship = 1
	mute = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if mute == true:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("master"),-80)
	else:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("master"),0)
		
			
