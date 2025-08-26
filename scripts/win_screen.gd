extends Control

@onready var camera_2d: Camera2D = $Camera2D
@onready var panel: Panel = $Panel
const speed := 50

func _ready() -> void:
	fade_in_panel()

func _process(delta: float) -> void:
	camera_2d.position.y += speed * delta

func fade_in_panel():
	var tween = get_tree().create_tween()
	tween.tween_property(panel,"modulate",Color(0,0,0,1), 5)
