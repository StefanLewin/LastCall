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
	201:{
		1: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Clark spricht 1.ogg",
		2: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Mutter spricht 1.ogg",
		3: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Clark spricht 2.ogg",
		4: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Mutter spricht 2.ogg",
		5: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Clark spricht 3.ogg",
		6: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Mutter spricht 3.ogg",
		7: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Clark spricht 4.ogg",
		8: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Mutter spricht 4.ogg",
		9: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Clark spricht 5.ogg",
		10:"res://assets/sounds/Calls/Mutter Interview/Mutter Interview Mutter spricht 5.ogg",
		12: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Clark spricht 6.ogg",
		13: "res://assets/sounds/Calls/Mutter Interview/Mutter Interview Mutter spricht 6.ogg"
	},
	301:{
		1: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Clark spricht 1.ogg",
		2: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Kim spricht 1.ogg",
		3: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Clark spricht 2.ogg",
		4:	"res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Kim spricht 2.ogg",
		5: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Clark spricht 3.ogg",
		6: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Kim spricht 3.ogg",
		7: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Clark spricht 4.ogg",
		8: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Kim spricht 4.ogg",
		9: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Clark spricht 5.ogg",
		10: "res://assets/sounds/Calls/Kim Interview/Interview 1/Kim Interview Kim spricht 1.ogg",
	},
	302:{
		1: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Clark spricht 1.ogg",
		2: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Kim spricht 1.ogg",
		3: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Clark spricht 2.ogg",
		4: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Kim spricht 2.ogg",
		5: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Clark spricht 3.ogg",
		6: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Kim spricht 3.ogg",
		7: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Clark spricht 4.ogg",
		8: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Kim spricht 4.ogg",
		9: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Clark spricht 5.ogg",
		10: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Kim spricht 5.ogg",
		11: "res://assets/sounds/Calls/Kim Interview/Interview 2/Kim Interview2 Clark spricht 6.ogg"
	},
	401:{
		1: "res://assets/sounds/Calls/James Miller/Tatort Anruf/Miller Anruf Miller spricht 1.ogg",
		2: "res://assets/sounds/Calls/James Miller/Tatort Anruf/Miller Anruf Clark spricht 1.ogg",
		3: "res://assets/sounds/Calls/James Miller/Tatort Anruf/Miller Anruf Miller spricht 2.ogg",
		4: "res://assets/sounds/Calls/James Miller/Tatort Anruf/Miller Anruf Clark spricht 2.ogg",
		5: "res://assets/sounds/Calls/James Miller/Tatort Anruf/Miller Anruf Miller spricht 3.ogg",
		6: "res://assets/sounds/Calls/James Miller/Tatort Anruf/Miller Anruf Clark spricht 3.ogg",
	},
	402:{
		1: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Miller spricht 1.ogg",
		2: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Zelmer spricht 1.ogg",
		3: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Miller spricht 2.ogg",
		4: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Zelmer spricht 2.ogg",
		5: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Miller spricht 3.ogg",
		6: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Zelmer spricht 3.ogg",
		7: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Miller spricht 4.ogg",
		8: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Zelmer spricht 4.ogg",
		9: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Miller spricht 5.ogg",
		10: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Zelmer spricht 5.ogg",
		11: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Miller spricht 6.ogg",
		12: "res://assets/sounds/Calls/James Miller/Autopsie/Autopsie Zelmer spricht 6.ogg"
	},
	501:{
		1: "res://assets/sounds/Calls/Brian Interview/Brian Interview Clark spricht 1.ogg",
		2: "res://assets/sounds/Calls/Brian Interview/Brian Interview Brian spricht 1.ogg",
		3: "res://assets/sounds/Calls/Brian Interview/Brian Interview Clark spricht 2.ogg",
		4: "res://assets/sounds/Calls/Brian Interview/Brian Interview Brian spricht 2.ogg",
		5: "res://assets/sounds/Calls/Brian Interview/Brian Interview Clark spricht 3.ogg",
		6: "res://assets/sounds/Calls/Brian Interview/Brian Interview Brian spricht 3.ogg",
		7: "res://assets/sounds/Calls/Brian Interview/Brian Interview Clark spricht 4.ogg",
		8: "res://assets/sounds/Calls/Brian Interview/Brian Interview Brian spricht 4.ogg",
		9: "res://assets/sounds/Calls/Brian Interview/Brian Interview Clark spricht 5.ogg",
		10: "res://assets/sounds/Calls/Brian Interview/Brian Interview Brian spricht 5.ogg"
	},
	601:{
		1: "res://assets/sounds/Calls/Neil Interview/Neil Interview Clark spricht 1.ogg",
		2: "res://assets/sounds/Calls/Neil Interview/Neil Interview Neil spricht 1.ogg",
		3: "res://assets/sounds/Calls/Neil Interview/Neil Interview Clark spricht 2.ogg",
		4: "res://assets/sounds/Calls/Neil Interview/Neil Interview Neil spricht 2.ogg",
		5: "res://assets/sounds/Calls/Neil Interview/Neil Interview Clark spricht 3.ogg",
		6: "res://assets/sounds/Calls/Neil Interview/Neil Interview Neil spricht 3.ogg",
		7: "res://assets/sounds/Calls/Neil Interview/Neil Interview Clark spricht 4.ogg",
		8: "res://assets/sounds/Calls/Neil Interview/Neil Interview Neil spricht 4.ogg",
		9: "res://assets/sounds/Calls/Neil Interview/Neil Interview Clark spricht 5.ogg",
		10: "res://assets/sounds/Calls/Neil Interview/Neil Interview Neil spricht 5.ogg"
	}
}

func playCall(call:int, zeile: int):
	var AudioPath = AudioCallConfig[call].get(zeile)
	var Audio = load(AudioPath);
	%AudioStreamPlayerCALLER.stream = Audio
	%AudioStreamPlayerCALLER.play()
	
