extends Button
@onready var transcript: Control = get_tree().get_first_node_in_group("Transcript")

var call_name : String
var call_index : int

func setup(index, name) -> void:
	self.call_name = name
	self.call_index = index
	self.text = str(call_index+1)

func _ready() -> void:
	self.pressed.connect(_on_pressed)
	

func _on_pressed() -> void:
	transcript.get_child(0).finish()
	transcript.get_child(0)._on_display_call(call_name,"phoneCalls", call_index)
