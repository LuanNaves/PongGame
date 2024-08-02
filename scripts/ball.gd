extends CharacterBody2D

const START_SPEED = 400.0
const ACCEL = 30.0
var speed : int
var dir : Vector2
const MAX_Y_VECTOR : float = 0.6

func _ready():
	pass
	
func reset_ball():
	# Alterando o angulo e a posição que a bola vai começar
	position.x = 576
	position.y = randf_range(200,400)
	speed = START_SPEED
	dir = random_direction()

func random_direction():
	var new_dir := Vector2()
	new_dir.x = [-1, 1].pick_random()
	new_dir.y = randf_range(-1, 1)
	return new_dir.normalized()
	
func _physics_process(delta):
	var collision = move_and_collide(dir * speed * delta)
	var collider
	if collision:
		if collider == $"../Player1" or collider == $"../Player2":
			speed += ACCEL
			dir = new_direction(collider)
		else:
			dir = dir.bounce(collision.get_normal())

func new_direction(collider):
	var ball_y = position.y
	var pad_y = collider.position.y
	var dist = ball_y - pad_y
	var new_dir := Vector2()
	
	# Flip the horizontal direction
	if dir.x > 0:
		new_dir.x = -1
	else:
		new_dir.x = 1
	new_dir.y = (dist / collider.p_height  / 2) * MAX_Y_VECTOR
	return new_dir.normalized()
	
