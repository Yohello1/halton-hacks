extends CharacterBody2D


var SPEED = 200.0
const JUMP_VELOCITY = -200.0
const MAX_OXYGEN = 360 # 6min
var current_oxgygen = 359
var jump_counter = 0


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	print(Global.checkpoint)


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	# Jumping 
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if Input.is_action_just_pressed("ui_accept") and (jump_counter < Global.jump_limit):
		velocity.y = JUMP_VELOCITY
		jump_counter += 1
	if is_on_floor():
		jump_counter = 0 
	
	# shift
	if Input.is_action_pressed("ui_down"):
		SPEED = 100
	else:
		SPEED = 200
	
	
	#Left & right  
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 20)
	
	
	# animation stuff
	if Input.is_action_pressed("ui_down"):
		$AnimatedSprite2D.play("Crouching")
		$CollisionShape2D.scale.y  = 0.5
	elif is_on_floor() and velocity.x == 0:
		$AnimatedSprite2D.play("Standing")
		$CollisionShape2D.scale.y  = 1
	elif is_on_floor() and velocity.x != 0:
		$AnimatedSprite2D.play("Walking")
		$CollisionShape2D.scale.y  = 1
	elif velocity.y != 0:
		$AnimatedSprite2D.play("Jumping")
		$CollisionShape2D.scale.y  = 1
	
	
	if self.position.y  > 500:
		die()
	
	move_and_slide()
	

func die():
	self.position.x = Global.list_of_nodes[str(Global.checkpoint)][0]
	self.position.y = Global.list_of_nodes[str(Global.checkpoint)][1]


