extends Node

func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
