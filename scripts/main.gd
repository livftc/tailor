extends Node

func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
	
	
func toggle_sprite(path: NodePath):
	get_node(path).visible = !get_node(path).visible
	
	

func show_skin(selected: NodePath) -> void:
	for child in $skincolors.get_children():
		child.hide()

	get_node(selected).show()

func _on_back_pressed() -> void:
	$closet.show()
	$skin.hide()
	$haircloset.hide()
	$topscloset.hide()
	$bottoms.hide()
	$accessoriescloset.hide()	

func _on_skin_pressed() -> void:
	$closet.hide()
	$skin.show()
	
	

func _on_peach_pressed() -> void:
	show_skin(^"skincolors/peachm")


func _on_tan_pressed() -> void:
	$skincolors/tanm.modulate = Color("e7ac87ff")
	show_skin(^"skincolors/tanm")


func _on_light_brown_pressed() -> void:
	$skincolors/lightbrownm.modulate = Color("a27153ff")
	show_skin(^"skincolors/lightbrownm")


func _on_brown_pressed() -> void:
	$skincolors/brownm.modulate = Color("553825ff")
	show_skin(^"skincolors/brownm")


func _on_dark_brown_pressed() -> void:
	$skincolors/darkbrownm.modulate = Color("1f1209ff")
	show_skin(^"skincolors/darkbrownm")


func _on_hair_pressed() -> void:
	$closet.hide()
	$haircloset.show()
func _on_middleb_pressed() -> void:
	toggle_sprite(^"hairnode/middle")

func _on_pixieb_pressed() -> void:
	toggle_sprite(^"hairnode/pixie")

func _on_sideb_pressed() -> void:
	toggle_sprite(^"hairnode/side")

func _on_bunb_pressed() -> void:
	toggle_sprite(^"hairnode/bun")
	
func _on_edgesb_pressed() -> void:
	toggle_sprite(^"hairnode/edges")



func _on_tops_pressed() -> void:
	$closet.hide()
	$topscloset.show()
	
func _on_top_1_pressed() -> void:
	toggle_sprite(^"tops/top1")
	
func _on_tubeb_pressed() -> void:
	toggle_sprite(^"tops/tube")
	
func _on_collarb_pressed() -> void:
	toggle_sprite(^"tops/collared")

func _on_tshirtb_pressed() -> void:
	toggle_sprite(^"tops/tshirt")




func _on_bottoms_pressed() -> void:
	$closet.hide()
	$bottoms.show()
	
func _on_bot_1_pressed() -> void:
	toggle_sprite(^"bots/bot1")
	
func _on_flared_pressed() -> void:
	toggle_sprite(^"bots/flare_jeans")

func _on_shorts_pressed() -> void:
	toggle_sprite(^"bots/black_shorts")


func _on_accesories_pressed() -> void:
	$closet.hide()
	$accessoriescloset.show()

func _on_beltb_pressed() -> void:
	toggle_sprite(^"access/belt")
	
func _on_bolerob_pressed() -> void:
	toggle_sprite(^"access/bolero")
