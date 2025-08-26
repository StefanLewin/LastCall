extends Control
@onready var label: Label = $Label
var picked_up: bool = true

func _ready() -> void:
	label.text = GameManager.getText()

func _process(delta):
	# Follow the mouse
	if picked_up:
		var global_mouse_pos = get_global_mouse_position()
		position = get_parent().to_local(global_mouse_pos - size / 2)


func _on_gui_input(event: InputEvent) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.is_pressed(): # 1 = left mouse button
		picked_up = !picked_up
