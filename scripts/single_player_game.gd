extends Node

const PADDLE_SPEED : float = 500
var player1_score = 0
var CPU_score = 0

func _on_ball_timer_timeout():
	$Ball.reset_ball()

func _physics_process(delta):
	var exit = Input.get_action_strength("exit_game")
	if exit:
		get_tree().change_scene_to_file("res://main.tscn")
