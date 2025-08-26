extends CanvasLayer

@onready var label: Label = $Label

func _ready() -> void:
	start_tween()

func start_tween():
	var tween = get_tree().create_tween().set_loops()
	tween.tween_property(label,"modulate", Color(1,1,1,0.6), 1)
	tween.tween_property(label, "modulate", Color(1,1,1,1), 1)
	tween.finished.connect(start_tween)

func _on_button_pressed() -> void:
	self.hide()
