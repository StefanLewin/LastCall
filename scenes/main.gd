extends Node2D
@onready var highlight_mug: Sprite2D = $background/Mug/Highlight
@onready var highlight_notepad: Sprite2D = $background/Notepad/Highlight
@onready var highlight_paper: Sprite2D = $background/Paper/Highlight
@onready var highlight_phone: Sprite2D = $background/Phone/Highlight
@onready var highlight_archive: Sprite2D = $background/Archive/Highlight

@onready var transcript: Control = $background/Paper/Transcript
@onready var solution_box: Control = $background/Paper/SolutionBox
@onready var notepad: Control = get_tree().get_first_node_in_group("Notepad")

var st_added = false

func _ready() -> void:

	AudioManager.get_child(0).playing = false
	AudioManager.get_child(1).stream = preload("res://assets/sounds/CommitAndCry_v1.wav")
	AudioManager.get_child(1).fade_in()
	pass

func _on_area_paper_mouse_entered() -> void:
	highlight_paper.visible = true

func _on_area_paper_mouse_exited() -> void:
	highlight_paper.visible = false

func _on_area_noteblock_mouse_entered() -> void:
	highlight_notepad.visible = true

func _on_area_noteblock_mouse_exited() -> void:
	highlight_notepad.visible = false

func _on_area_archive_mouse_entered() -> void:
	highlight_archive.visible = true

func _on_area_archive_mouse_exited() -> void:
	highlight_archive.visible = false

func _on_area_phone_mouse_entered() -> void:
	highlight_phone.visible = true

func _on_area_phone_mouse_exited() -> void:
	highlight_phone.visible = false

func _on_area_phone_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if InputEventMouseButton and event.is_pressed():
		AudioManager.get_child(0).stream = preload("res://assets/sounds/phone_ring.ogg")
		AudioManager.get_child(0).fade_in()
		AudioManager.get_child(0).volume_db = -10
		AudioManager.get_child(0).stream.loop = false
		transcript.visible = !transcript.visible
		solution_box.visible = !solution_box.visible

func _on_area_mug_mouse_entered() -> void:
	highlight_mug.visible = true;

func _on_area_mug_mouse_exited() -> void:
	highlight_mug.visible = false

func _on_area_mug_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if InputEventMouseButton and event.is_pressed():
		$Pause.show()

func _on_area_paper_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	#if InputEventMouseButton and event.is_pressed():
		#transcript.get_child(0)._on_display_call("Sorgentelefon","phoneCalls", 0)
	pass


func _on_area_archive_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if InputEventMouseButton and event.is_pressed():
		if st_added == false:
			GameManager.setInfo(101)
			notepad.addInfo()
			GameManager.setInfo(107)
			notepad.addInfo()
			st_added = true
