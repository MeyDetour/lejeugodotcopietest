extends CharacterBody2D

const speed = 250.0

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	
	if Input.is_action_pressed("walk_right"):
		animated_sprite.play("right_walk")
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("walk_left"):
		animated_sprite.play("left_walk")
		velocity.x = - speed
		velocity.y = 0
	elif Input.is_action_pressed("walk_front"):
		animated_sprite.play("front_walk")
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("walk_back"):
		animated_sprite.play("back_walk")
		velocity.x = 0
		velocity.y = - speed
	else:
		animated_sprite.play("idle")
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
	
	



