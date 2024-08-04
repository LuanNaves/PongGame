extends Node

@onready var paddle_sound = $PaddleSound
@onready var wall_sound = $WallSound
@onready var score_sound = $ScoreSound


func play_paddle():
	paddle_sound.play()
	
func play_wall():
	wall_sound.play()
	
func play_score():
	score_sound.play()
