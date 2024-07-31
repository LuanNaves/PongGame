extends Node

@onready var p1_label = $"Player1 Score/Label"
@onready var p2_label = $"Player2 Score/Label"
var P1_SCORE = Game.player1_score
var P2_SCORE = Game.player2_score

func _on_player_1_score_body_entered(body):
	P1_SCORE += 1
	p1_label.text = str(P1_SCORE)

func _on_player_2_score_body_entered(body):
	P2_SCORE += 1
	p2_label.text = str(P2_SCORE)


