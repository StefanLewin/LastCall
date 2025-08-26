extends Node
#@export_file("*json") var database_file: String
@export var db_dict := {}
var database_file = "res://assets/json/database.json"

var characters : Array[Person]:
	get: return characters
var weapons : Array[Note]:
	get: return weapons
var motives : Array[Note]:
	get: return motives
var places : Array[Note]:
	get: return places

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	db_dict = load_call_text()
	getPersons()
	getWeapons()
	getMotives()
	getPlaces()
	print("DB Ready")

func load_call_text():
	if FileAccess.file_exists(database_file):
		var file = FileAccess.open(database_file, FileAccess.READ)
		var test_json_conv = JSON.new()
		test_json_conv.parse(file.get_as_text())
		return test_json_conv.get_data()

func getPersons():
	var persons = db_dict["characters"]
	var temp
	for p in persons:
		temp = Person.new(int(p["id"]), p["name"], int(p["relation"]))
		characters.append(temp)
	print(characters)
	
func getWeapons():
	var note = db_dict["weapons"]
	var temp
	for p in note:
		temp = Note.new(int(p["id"]), p["name"])
		weapons.append(temp)
	print(weapons)

func getMotives():
	var note = db_dict["motives"]
	var temp
	for p in note:
		temp = Note.new(int(p["id"]), p["name"])
		motives.append(temp)
	print(motives)
	
func getPlaces():
	var note = db_dict["places"]
	var temp
	for p in note:
		temp = Note.new(int(p["id"]), p["name"])
		places.append(temp)
	print(places)

func getInfo(id: int):
	if(id < 200):
		print(str(id-100))
		return characters[id-101]
	elif(id < 300):
		return weapons[id - 201]
	elif(id < 400):
		return motives[id - 301]
	elif(id < 500):
		return places[id - 401]
	
	return -1
