extends Panel

@onready var stylebox := (get("theme_override_styles/panel") as StyleBoxFlat).duplicate()

func _ready() -> void:
	set("theme_override_styles/panel", stylebox)

func _on_mouse_entered() -> void:
	stylebox.bg_color = Color("5e5e5e50")

func _on_mouse_exited() -> void:
	stylebox.bg_color = Color("5e5e5e00")
