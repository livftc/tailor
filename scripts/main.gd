extends Node

func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

func toggle_sprite(path: NodePath):
	get_node(path).visible = !get_node(path).visible
	
func _on_peach_pressed() -> void:
	toggle_sprite(^"skincolors/peachm")
	pass # Replace with function body.


func _on_skin_pressed() -> void:
	$closet.hide()
	$skin.show()
	pass # Replace with function body.
	
func _on_tops_pressed() -> void:
	$closet.hide()
	$topscloset.show()
	pass # Replace with function body.
	
func _on_top_1_pressed() -> void:
	toggle_sprite(^"tops/top1")
	pass # Replace with function body.
	
func _on_back_pressed() -> void:
	$closet.show()
	$skin.hide()
	$tops.hide()
	$bottoms.hide()
	pass # Replace with function body.


func _on_bot_1_pressed() -> void:
	toggle_sprite(^"bots/bot1")
	pass # Replace with function body.


func _on_bottoms_pressed() -> void:
	$closet.hide()
	$bottoms.show()
	pass # Replace with function body.
	
	
func _on_color_picker_button_picker_created() -> void:
	var popup: PopupPanel = $ColorPickerButton.get_popup() as PopupPanel
	
	popup.size = Vector2i(400, 600)
	popup.wrap_controls = true
