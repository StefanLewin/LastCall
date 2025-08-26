extends Control

@onready var label: Label = $Label
@onready var notepad: Control = get_tree().get_first_node_in_group("Notepad")
@onready var transcript: Control = get_tree().get_first_node_in_group("Transcript")

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
		#match entryInfo.ID:
			#101:
				#transcript.get_child(0).finish()
				#transcript.get_child(0)._on_display_call("Sorgentelefon","phoneCalls", 0)
			#102:
				#transcript.get_child(0).finish()
				#transcript.get_child(0)._on_display_call("Lara Hickens","phoneCalls", 0)
			#103:
				#transcript.get_child(0).finish()
				#transcript.get_child(0)._on_display_call("Kim Brick","phoneCalls", 0)
			#104:
				#transcript.get_child(0).finish()
				#transcript.get_child(0)._on_display_call("James Miller","phoneCalls", 0)
			#105:
				#transcript.get_child(0).finish()
				#transcript.get_child(0)._on_display_call("Brian Hopkins","phoneCalls", 0)
			#106:
				#transcript.get_child(0).finish()
				#transcript.get_child(0)._on_display_call("Neil Hopkins","phoneCalls", 0)
			#_:
				#transcript.get_child(0).finish()
				#transcript.get_child(0)._on_display_call("Sorgentelefon","phoneCalls", 0)
func deselectItem():
	_is_selected = false;
