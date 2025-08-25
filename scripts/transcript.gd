extends Control

@onready var rich_text_label: RichTextLabel = $Panel/RichTextLabel
const popup_scene = preload("res://scenes/text_block.tscn")
var active_popup: Node = null

func _ready():
	rich_text_label.connect("meta_clicked", Callable(self, "_on_meta_clicked"))


func _on_meta_clicked(meta):
	print("You clicked the link: " + meta + "!")
	GameManager.setText(meta)
	
	# Remove any existing popup first
	if active_popup:
		active_popup.queue_free()
		active_popup = null

	# Create new popup
	active_popup = popup_scene.instantiate()

	# Add it to the same parent as this Control (so it's in the UI)
	get_tree().current_scene.add_child(active_popup)

	# Set its position at the mouse
	var mouse_pos = get_global_mouse_position()
	active_popup.position = mouse_pos - active_popup.size / 2
