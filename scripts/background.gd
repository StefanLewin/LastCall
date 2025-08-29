extends Sprite2D

func _ready():
	centered = true          # Make sure the sprite uses its center as origin
	offset = Vector2.ZERO    # Remove any texture offset
	_resize_background()
	get_viewport().size_changed.connect(_resize_background)

func _resize_background():
	if not texture:
		return
	
	var viewport_size = get_viewport_rect().size
	var tex_size = texture.get_size()
	
	# Scale so the background always covers the viewport
	var scale_factor = max(
		viewport_size.x / tex_size.x,
		viewport_size.y / tex_size.y
	)
	scale = Vector2(scale_factor, scale_factor)
	
	# Center in the viewport
	position = viewport_size / 2
