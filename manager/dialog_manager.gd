class_name DialogManagerComponent
extends Node

#@export_file("*json") var calls_text_file: String
var calls_text_file = "res://assets/json/Dialogs.json"
var calls_dict := {}
var call_text
var caller_text
var called_text
var time_text
var index: int = 0
var full_call: String
var text_display_time
@onready var label_call: RichTextLabel = $"../Panel/MarginContainer/VBoxContainer/Call Transcript"
@export var label_caller_name: RichTextLabel
@export var label_called_name: RichTextLabel
@export var label_time: RichTextLabel

#Is a dialog currently building?
var  in_progress := false

#Is a line currently bein typed?
var typing := false

var reached_end := false


func _ready() -> void:
	calls_dict = load_call_text()
	#_on_display_call("Sorgentelefon", "phoneCalls", 0)
	pass
func _process(delta: float) -> void:		
	if !typing:
		if Input.is_action_just_pressed("ui_accept") && in_progress:
			next_line()
		else:
			pass

# call this function to start displaying the call
func _on_display_call(character_key, phonecalls_key, index_key):
	label_call.clear()
	full_call = ""
	index = 0
	reached_end = false
	
	var character
	var phonecalls
	var indey
	
	index = 0
	label_call.text = ""
	character = calls_dict[character_key].duplicate()
	phonecalls = character[phonecalls_key].duplicate()
	indey = phonecalls[index_key].duplicate()
	call_text = indey["transcript"]
	called_text = indey["from"]
	time_text = indey["time"]
	caller_text = character["name"]
	
	in_progress = true
	display_call()
	display_called_name()
	display_caller_name()
	display_call_time()

#Loads the json file
func load_call_text():
	if FileAccess.file_exists(calls_text_file):
		var file = FileAccess.open(calls_text_file, FileAccess.READ)
		var test_json_conv = JSON.new()
		test_json_conv.parse(file.get_as_text())
		return test_json_conv.get_data()
	else:
		return {}

func next_line():
	if call_text != null:
		if index < call_text.size() - 1:
			index += 1
			display_call()
		else:
			index = 0
			finish()

func finish():
	in_progress = false
	if !reached_end:
		label_call.clear()
		full_call += "\n[ Ende der Aufnahme ]"
		label_call.visible_characters = full_call.length()
		label_call.text = full_call
		reached_end = true;

func display_call():
	if label_call != null:
		label_call.clear()
		typing = true
		var tween = get_tree().create_tween()
		full_call += call_text[index]
		var current_call_text_length = strip_bbcode(call_text[index]).length()
		var full_call_length = strip_bbcode(full_call).length()
		label_call.visible_characters = full_call_length - current_call_text_length
		text_display_time = 0.01 * (full_call_length - (full_call_length - current_call_text_length))
		label_call.text = full_call
		tween.tween_property(label_call, "visible_characters", full_call_length, text_display_time)
		await tween.finished
		typing = false

func display_caller_name():
	if label_caller_name != null:
		label_caller_name.text = caller_text

func display_called_name():
	if label_called_name != null:
		label_called_name.text = called_text

func display_call_time():
	if label_time != null:
		label_time.text = time_text
		
func get_number_calls(name) -> int:
	var character = calls_dict[name].duplicate()
	return character["phoneCalls"].size()
	
func strip_bbcode(text: String) -> String:
	var regex := RegEx.new()
	# Matches [tag], [tag=something], [/tag]
	regex.compile(r"\[\/?\w+(?:=[^\]]+)?\]")
	return regex.sub(text, "", true)
