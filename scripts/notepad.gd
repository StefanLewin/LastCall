extends Control

@onready var text_container: VBoxContainer = $Panel/VBoxContainer
@export var item_scene: PackedScene

func _on_panel_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if GameManager.is_text_selected:
			var block_instance = item_scene.instantiate()
			text_container.add_child(block_instance)
