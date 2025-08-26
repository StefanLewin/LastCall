extends VBoxContainer
class_name NotepadCategory
@export var _category_name : String
@export var category : Globals.Category
@export var relationship : Globals.Relationship

@onready var title: RichTextLabel = $Title
@onready var items: VBoxContainer = $Items

const notepad_empty = preload("res://scenes/notepad_entry_emtpy.tscn")
const notepad_entry = preload("res://scenes/notepad_entry.tscn")
var isEmpty = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	title.text = _category_name
	if(items.get_child_count() == 0):
		items.add_child(notepad_empty.instantiate())
		isEmpty = true

func addItem(item) -> void:
	if(isEmpty):
		items.remove_child(items.get_child(0))
		isEmpty = false
	var entry = notepad_entry.instantiate()
	entry.setup(item)
	items.add_child(entry)
