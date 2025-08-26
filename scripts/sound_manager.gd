extends AudioStreamPlayer2D

func fade_in():
	var tween = get_tree().create_tween()
	volume_db = -20
	play()
	tween.tween_property(self, "volume_db", 0, 3)
