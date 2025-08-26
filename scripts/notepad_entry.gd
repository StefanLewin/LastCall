extends Control

@onready var label: Label = $Label
@onready var notepad: Control = get_tree().get_first_node_in_group("Notepad")

var entryInfo 
var _is_selected = false

func _ready() -> void:
	
	if(entryInfo is Person):
		label.text = entryInfo.PersonName
	elif(entryInfo is  Note):
		label.text = entryInfo.NoteName

func setup(info):
	self.entryInfo = info

func _on_panel_gui_input(event: InputEvent) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.is_pressed():
		notepad.deselectPersonNodes()
		_is_selected = true
		print("selecting: " + str(entryInfo.ID))
		match entryInfo.ID:
			102:
				DialogManager._on_display_call("Lara Hittgens","phoneCalls", 0)
func deselectItem():
	_is_selected = false;
