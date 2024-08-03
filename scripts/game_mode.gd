extends Node


func _on_single_player_pressed():
	get_tree().change_scene_to_file("res://scenes/single_player_game.tscn")


func _on_multi_player_pressed():
	get_tree().change_scene_to_file("res://scenes/multiplayer_game.tscn")
