extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.jump_limit = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
