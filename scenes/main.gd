extends Node2D

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
