extends CharacterBody2D

var p_height : int

func _ready():
	p_height = $ColorRect.get_size().y

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("player2_up", "player2_down")
	if direction:
		velocity.y = direction * get_parent().PADDLE_SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, get_parent().PADDLE_SPEED)

	move_and_slide()
