extends Node

var selected_text = ""
var is_text_selected = false

func setText(text:String) -> void:
	is_text_selected = true
	selected_text = text

func getText() -> String:
	return selected_text

func releaseText() -> String:
	var text = selected_text
	selected_text = ""
	is_text_selected = false
	return text
