extends Control

@onready var call_transcript: RichTextLabel = $"Panel/MarginContainer/VBoxContainer/Call Transcript"
@onready var btn_container: HBoxContainer = $"Panel/MarginContainer/VBoxContainer/HBoxContainer"

const call_button = preload("res://scenes/call_button.tscn")
const popup_scene = preload("res://scenes/text_block.tscn")
var active_popup: Node = null

func _ready():
	call_transcript.connect("meta_clicked", Callable(self, "_on_meta_clicked"))

func _on_meta_clicked(meta):
	print("You clicked the link: " + meta + "!")
	GameManager.setInfo(int(meta))
	AudioManager.get_child(0).stream = preload("res://assets/sounds/info_notif.wav")
	AudioManager.get_child(0).play()
	
	# Remove any existing popup first
	if active_popup:
		active_popup.queue_free()
		#active_popup = null

	# Create new popup
	active_popup = popup_scene.instantiate()

	# Add it to the same parent as this Control (so it's in the UI)
	get_tree().current_scene.add_child(active_popup)

	# Set its position at the mouse
	var mouse_pos = get_global_mouse_position()
	active_popup.position = mouse_pos - active_popup.size / 2

func select_person(id:int):
	for child in btn_container.get_children():
		child.queue_free()
		
	var script = self.get_child(0)
	var callName: String
	match id:
			101:
				callName = "Sorgentelefon"
			102:
				callName = "Lara Hickens"
			103:
				callName = "Kim Brick"
			104:
				callName = "James Miller"
			105:
				callName = "Brian Hopkins"
			106:
				callName = "Neil Hopkins"
			107:
				callName = "Tipps"
			_:
				callName = "Sorgentelefon"
				
	var numberCalls = script.get_number_calls(callName)
	for i in numberCalls:
		var btn = call_button.instantiate()
		btn_container.add_child(btn)
		btn.setup(i, callName)
	script._on_display_call(callName,"phoneCalls", 0)
