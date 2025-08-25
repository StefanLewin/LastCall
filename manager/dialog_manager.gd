class_name DialogManagerComponent
extends Node

@export_file("*json") var calls_text_file: String
@export var calls_dict := {}
var call_text
var caller_text
var called_text
var time_text
var index: int = 0
var full_call: String
@export var label_call: RichTextLabel
@export var label_caller_name: RichTextLabel
@export var label_called_name: RichTextLabel
@export var label_time: RichTextLabel
var  in_progress := false


func _ready() -> void:
	calls_dict = load_call_text()
	_on_display_call("character","phoneCalls", 0)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		next_line()
	else:
		pass

func _on_display_call(character_key, phonecalls_key, index_key):
	if in_progress:
		next_line()
	else:
		var character: Dictionary
		var phonecalls
		var index
		
		character = calls_dict[character_key].duplicate()
		phonecalls = character[phonecalls_key].duplicate()
		index = phonecalls[index_key].duplicate()
		call_text = index["transcript"]
		called_text = index["from"]
		time_text = index["time"]
		caller_text = character["name"]
		
		in_progress = true
		display_call()
		display_called_name()
		display_caller_name()
		display_call_time()

func load_call_text():
	if FileAccess.file_exists(calls_text_file):
		var file = FileAccess.open(calls_text_file, FileAccess.READ)
		var test_json_conv = JSON.new()
		test_json_conv.parse(file.get_as_text())
		return test_json_conv.get_data()

func next_line():
	if index < call_text.size() - 1:
		index += 1
		display_call()
	else:
		index = 0
		finish()

func finish():
	label_call.text =""
	in_progress = false

func display_call():
	if label_call != null:
		full_call += call_text[index]
		print(full_call)
		label_call.text = full_call

func display_caller_name():
	if label_caller_name != null:
		label_caller_name.text = caller_text

func display_called_name():
	if label_called_name != null:
		label_called_name.text = called_text

func display_call_time():
	if label_time != null:
		label_time.text = time_text
