extends Control
@onready var label: Label = $Label
@onready var notepad: Control = get_tree().get_first_node_in_group("Notepad")


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
		var mousepos = get_global_mouse_position()
		var npRect : Rect2 = notepad.get_global_rect()
		var mouse_pos: Vector2 = get_global_mouse_position()
		if npRect.has_point(mouse_pos):
			notepad.addInfo()
			self.queue_free()
