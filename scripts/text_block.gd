extends Control
@onready var label: Label = $Label

func _ready() -> void:
	label.text = GameManager.getText()

func _process(delta):
	#pass
	# Follow the mouse
	var global_mouse_pos = get_global_mouse_position()
	position = get_parent().to_local(global_mouse_pos - size / 2)

	# Remove self if left mouse button is released
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT): # 1 = left mouse button
		print("TEXT IS DELETED")
		queue_free()
