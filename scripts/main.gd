extends Node


func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/game_mode.tscn")
	
func _on_quit_pressed():
	get_tree().quit()


func _on_ball_timer_timeout():
	$Ball.reset_ball()
