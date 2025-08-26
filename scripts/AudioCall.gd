extends Node

@export var AudioCallConfig: Dictionary = {
	101:{
		0: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 1.ogg",
		1: "res://assets/sounds/Calls/Telefonseelsorge/Nora spricht 1.ogg",
		2: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 2.ogg",
		3: "res://assets/sounds/Calls/Telefonseelsorge/Nora spricht 2.ogg",
		4: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 3.ogg",
		5: "res://assets/sounds/Calls/Telefonseelsorge/Nora spricht 3.ogg",
		6: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 4.ogg",
		7: "res://assets/sounds/Calls/Telefonseelsorge/Nora spricht 4.ogg",
		8: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 5.ogg",
		9: "res://assets/sounds/Calls/Telefonseelsorge/Nora spricht 5.ogg",
		10: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 6.ogg",
		11: "res://assets/sounds/Calls/Telefonseelsorge/Nora spricht 6.ogg",
		12: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 7.ogg",
		13: "res://assets/sounds/Calls/Telefonseelsorge/Nora spricht 7.ogg",
		14: "res://assets/sounds/Calls/Telefonseelsorge/Telefonseelsorge spricht 8.ogg"
	},	
	102:{
		
	}
}
	
func _ready():
	playCall(101,1)

func playCall(call:int, zeile: int):
	var AudioPath = AudioCallConfig[call].get(zeile)
	var Audio = load(AudioPath);
	%AudioStreamPlayerCALLER.stream = Audio
	%AudioStreamPlayerCALLER.play()
	
