extends AudioStreamPlayer2D

func fade_in():
	print("x")
	var tween = get_tree().create_tween()
	volume_db = -10
	play()
	tween.tween_property(self, "volume_db", 20, 3)



func _on_finished() -> void:
	stream = preload("res://assets/sounds/CommitAndCry_v1.wav")
	play()
