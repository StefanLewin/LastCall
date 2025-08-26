extends Control

@onready var label: Label = $Label

var entryInfo 

func _ready() -> void:
	
	if(entryInfo is Person):
		label.text = entryInfo.PersonName
	elif(entryInfo is  Note):
		label.text = entryInfo.NoteName


func setup(info):
	self.entryInfo = info
