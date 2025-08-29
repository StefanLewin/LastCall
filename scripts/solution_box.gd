extends Control

@onready var murderer_text: TextEdit = $"MarginContainer/VBoxContainer/GridContainer/Murderer-Text"
@onready var weapon_text: TextEdit = $"MarginContainer/VBoxContainer/GridContainer/Weapon-Text"
@onready var motive_text: TextEdit = $"MarginContainer/VBoxContainer/GridContainer/Motive-Text"
@onready var place_text: TextEdit = $"MarginContainer/VBoxContainer/GridContainer/Place-Text"
@onready var button: Button = $MarginContainer/VBoxContainer/Button
@onready var solution_feedback: RichTextLabel = $MarginContainer/VBoxContainer/SolutionFeedback

func _ready() -> void:
	solution_feedback.visible = false

func _on_button_pressed() -> void:
	var murderer = murderer_text.text.to_lower().replace(" ", "")
	var weapon = weapon_text.text.to_lower().replace(" ", "")
	var motive = motive_text.text.to_lower().replace(" ", "")
	var place = place_text.text.to_lower().replace(" ", "")
	
	print(murderer + " | " + weapon + " | " + motive + " | " + place)
	if(
		(murderer == "neil" or murderer == "neilhopkins")
		and (weapon == "physischegewalt" or weapon == "gewalt")
		and (motive == "familienehre" or motive == "ehre" or motive == "familie")
		and (place == "waldbrückeimbay-distrikt" or place == "waldbrücke" or place == "brücke" or place == "bruecke")
	):
		solution_feedback.visible = true
		print("RICHTIGE Lösung")
		solution_feedback.clear()
		solution_feedback.append_text("[color=#175e38]Sie haben den Fall gelöst, Detective![/color]")
		AudioManager.get_child(1).stop()
		AudioManager.get_child(0).volume_db = 10
		AudioManager.get_child(0).stream = preload("res://assets/sounds/endingjingle_v2.wav")

		AudioManager.get_child(0).fade_in()
		
	else:
		solution_feedback.visible = true
		print("FALSCH Lösung")
		solution_feedback.clear()
		solution_feedback.append_text("[color=#5e1717]Das klingt nicht ganz logisch, Detective![/color]")


func _on_murderer_text_focus_entered() -> void:
	solution_feedback.visible = false

func _on_weapon_text_focus_entered() -> void:
	solution_feedback.visible = false

func _on_motive_text_focus_entered() -> void:
	solution_feedback.visible = false

func _on_place_text_focus_entered() -> void:
	solution_feedback.visible = false
