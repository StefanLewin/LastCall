extends VBoxContainer

@export var _category_name : String

@onready var title: RichTextLabel = $Title
@onready var items: VBoxContainer = $Items

const notepad_empty = preload("res://scenes/notepad_entry_emtpy.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	title.text = _category_name
	if(items.get_child_count() == 0):
		items.add_child(notepad_empty.instantiate())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
