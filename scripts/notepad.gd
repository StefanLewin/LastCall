extends Control

@onready var tab_container: TabContainer = $Panel/TabContainer
@onready var persons: VBoxContainer = $Panel/TabContainer/Personen
@onready var notes: VBoxContainer = $Panel/TabContainer/Notizen
const notepad_entry = preload("res://scenes/notepad_entry.tscn")

@export var item_scene: PackedScene

var personNodes: Array[Node]

func _on_panel_gui_input(event: InputEvent) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.is_pressed():
		if GameManager.is_text_selected:
			pass

func addInfo():
	var info = GameManager.releaseInfo()
	if(info.ID < 200):
		tab_container.current_tab = 0
		addPerson(info)
		
	else:
		tab_container.current_tab = 1
		addNote(info)
		

func addNote(note):
	if note.ID >= 200 and note.ID < 300:
		for node in notes.get_children():
			if node.category == Globals.Category.WEAPON:
				node.addItem(note)
				return
	if note.ID >= 300 and note.ID < 400:
		for node in notes.get_children():
			if node.category == Globals.Category.MOTIVE:
				node.addItem(note)
				return
	if note.ID >= 400 and note.ID < 500:
		for node in notes.get_children():
			if node.category == Globals.Category.PLACE:
				node.addItem(note)
				return

func addPerson(person):
	for node in persons.get_children():
		if node.relationship == person.Relation:
			var newNode = node.addItem(person)
			if newNode != null:
				personNodes.append(newNode)
			return

func deselectPersonNodes():
	for personNode in personNodes:
		personNode.deselectItem()
		print("deselecting: " + str(personNode.entryInfo.ID))
