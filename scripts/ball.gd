extends CharacterBody2D

var SPEED = 300.0
var rng = RandomNumberGenerator.new()

func reset():
	var randx = rng.randf_range(-200, 200)
	var randY = rng.randf_range(150,450)
	position = Vector2(400, randY)
	velocity = Vector2(200, 200).normalized() * SPEED

func _ready():
	velocity = Vector2(200, 200).normalized() * SPEED
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		SPEED += 2
