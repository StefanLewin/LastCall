extends Control

@onready var text_container: VBoxContainer = $Panel/VBoxContainer
@export var item_scene: PackedScene
var can_be_added: bool =  false

func _on_panel_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed() and can_be_added:
		if GameManager.is_text_selected:
			var block_instance = item_scene.instantiate()
			text_container.add_child(block_instance)


func _on_panel_mouse_entered() -> void:
	can_be_added = true

func _on_panel_mouse_exited() -> void:
	can_be_added = false
