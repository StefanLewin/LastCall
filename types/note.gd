extends RefCounted
class_name Note

var ID : int:
	get:
		return ID

var NoteName : String:
	get:
		return NoteName


func _init(id: int, name: String):
	self.ID = id
	self.NoteName = name


func _to_string() -> String:
	return "Note(id=%d, name=%s)" % [ID, NoteName]
