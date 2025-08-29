extends Control

func _ready():
	_resize_background()
	get_viewport().size_changed.connect(_resize_background)

func _resize_background():
	var viewport_size = get_viewport_rect().size
	size = viewport_size
