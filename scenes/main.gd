extends Node2D

@onready var transcript: Control = $Transcript
@onready var solution_box: Control = $SolutionBox


func _ready() -> void:
	AudioManager.get_child(0).stream = preload("res://assets/sounds/phone_ring.ogg")
	AudioManager.get_child(0).fade_in()
	pass

func _on_area_paper_mouse_entered() -> void:
	$PaperHighlights.visible = true

func _on_area_paper_mouse_exited() -> void:
	$PaperHighlights.visible = false

func _on_area_noteblock_mouse_entered() -> void:
	$NotesHighlights.visible = true

func _on_area_noteblock_mouse_exited() -> void:
	$NotesHighlights.visible = false

func _on_area_archive_mouse_entered() -> void:
	$ArchiveHighlights.visible = true

func _on_area_archive_mouse_exited() -> void:
	$ArchiveHighlights.visible =  false

func _on_area_phone_mouse_entered() -> void:
	$PhoneHighlights.visible = true

func _on_area_phone_mouse_exited() -> void:
	$PhoneHighlights.visible = false

func _on_area_phone_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if InputEventMouseButton and event.is_pressed():
		AudioManager.get_child(0).playing = false
		AudioManager.get_child(1).stream = preload("res://assets/sounds/CommitAndCry_v1.wav")
		AudioManager.get_child(1).fade_in()
		transcript.visible = !transcript.visible
		solution_box.visible = !solution_box.visible

func _on_area_mug_mouse_entered() -> void:
	$MugHighlights.visible = true

func _on_area_mug_mouse_exited() -> void:
	$MugHighlights.visible = false

func _on_area_mug_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if InputEventMouseButton and event.is_pressed():
		$Pause.show()
