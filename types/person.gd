extends RefCounted
class_name Person

var ID : int:
	get:
		return ID

var PersonName : String:
	get:
		return PersonName


var Relation : Globals.Relationship:
	get:
		return Relation

func _init(id: int, name: String, relation: Globals.Relationship):
	self.ID = id
	self.PersonName = name
	self.Relation = relation


func _to_string() -> String:
	var rel_name = Globals.Relationship.keys()[Relation]
	return "Person(id=%d, name=%s, relation=%s)" % [ID, PersonName, rel_name]
