extends Node

@onready var ball = $"../Ball"
@onready var p1_label = $"Player1 Score/Label"
@onready var p2_label = $"Player2 Score/Label"
@onready var timer = $Timer

var P1_SCORE = MultiplayerGame.player1_score
var P2_SCORE = MultiplayerGame.player2_score


func _on_player_1_score_body_entered(body):
	P1_SCORE += 1
	p1_label.text = str(P1_SCORE)
	timer.start()

func _on_player_2_score_body_entered(body):
	P2_SCORE += 1
	p2_label.text = str(P2_SCORE)
	timer.start()

func _on_timer_timeout():
	ball.reset_ball() # Replace with function body.
