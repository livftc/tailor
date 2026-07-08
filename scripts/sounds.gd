extends Node

# Load your click sound file here
var click_sound = preload("res://buttonsound.mp3") 

func _ready() -> void:
	get_tree().node_added.connect(_on_node_added)

func _on_node_added(node: Node) -> void:
	if node is BaseButton:
		node.pressed.connect(_on_button_pressed)

func _on_button_pressed() -> void:
	var player = AudioStreamPlayer.new()
	player.stream = click_sound
	
	add_child(player)
	player.play()
	
	
	player.finished.connect(player.queue_free)
