extends CharacterBody2D

const SPEED = 400.0

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("player1_up", "player1_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
