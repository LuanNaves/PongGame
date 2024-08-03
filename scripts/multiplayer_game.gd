extends Node

const PADDLE_SPEED : float = 500
var player1_score = 0
var player2_score = 0

func _on_ball_timer_timeout():
	$Ball.reset_ball()
