extends CharacterBody2D

# Windows height without the lenght of the walls
var win_height : int
var p_height : int
var ball_pos : Vector2
var dist : int
var move_by : float
@onready var ball = $"../Ball"

func _ready():
	win_height = get_viewport_rect().size.y
	p_height = $ColorRect.get_size().y

func _process(delta):
	ball_pos = ball.position
	dist = position.y - ball_pos.y

	if abs(dist) > 0:
		move_by = get_parent().PADDLE_SPEED * delta * (dist / abs(dist))
	else:
		move_by = dist

	position.y -= move_by
	
	position.y = clamp(position.y, (p_height / 2) + 19, win_height - 19 - p_height / 2)
		
	

