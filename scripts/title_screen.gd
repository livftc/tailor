extends Control
@export var bounce_height: float = 50.0
@export var bounce_speed: float = 5.0

func _on_start_button_pressed():
		get_tree().change_scene_to_file("res://Scenes/main.tscn")
		pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

	
