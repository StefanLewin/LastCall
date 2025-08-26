extends Node


var selected_info
var is_text_selected = false

func setInfo(id:int) -> void:
	is_text_selected = true
	selected_info = DB.getInfo(id)


func getText() -> String:
	if(selected_info.ID < 200):
		return selected_info.PersonName
	else: 
		return selected_info.NoteName

func releaseText() -> String:
	var text = getText()
	selected_info = null
	is_text_selected = false
	return text
