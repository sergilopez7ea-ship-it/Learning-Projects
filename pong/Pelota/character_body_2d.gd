extends CharacterBody2D
var speed = 20

func _ready():
	if randi() % 2 ==  0:
		velocity.x = 1 * speed
	else:
		velocity.x = -1 * speed
	if randi() % 2 ==  0:
		velocity.y = 1 *speed
	else:
		velocity.y = -1 * speed
	velocity *= speed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
