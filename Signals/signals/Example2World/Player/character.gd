extends CharacterBody2D

@onready var player: Sprite2D = $Player
@onready var dash_timer: Timer = $Player/DashTimer

var GRAVITY: float = ProjectSettings.get_setting("physics/2d/default_gravity")
var jump_counter: int = 0
var is_dashing: bool = false
var dash_direction: float = 1.0 # direction we're facing
const MOVE_SPEED: float = 350.0
const DASH_SPEED: float = MOVE_SPEED * 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func gravity_reset() -> void:
	if GRAVITY != ProjectSettings.get_setting("physics/2d/default_gravity"):
		GRAVITY = ProjectSettings.get_setting("physics/2d/default_gravity")

#func move_speed_reset():
	#MOVE_SPEED = 350.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
			
	########################################################
	##################### GRAVITY ##########################
	########################################################
	if not is_on_floor():
		if velocity.y > 0:
			velocity.y += GRAVITY * 1.5 * delta
		else:
			velocity.y += GRAVITY * delta
	
	if is_on_floor():
		jump_counter = 0
		gravity_reset()
	
	########################################################
	####################### JUMP ###########################
	########################################################
	if Input.is_action_just_pressed("jump"):
		# GROUND JUMP
		if is_on_floor():
			velocity.y = -650.0
			GRAVITY = 1500.0
			jump_counter += 1
		elif not is_on_floor() and jump_counter < 2: 
			velocity.y = -600.0
			GRAVITY = 2000.0 
			jump_counter += 1
	########################################################
	####################### DASH ###########################
	########################################################

	
	########################################################
	################# DIRECTIONAL MOVEMENT #################
	########################################################
	var direction_x := Input.get_axis("ui_left", "ui_right")
	if direction_x != 0: 
		dash_direction = sign(direction_x)
	
	# 2. Assign the movement to the built-in velocity variable
	if direction_x:
		velocity.x = direction_x * MOVE_SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, MOVE_SPEED)
		
	move_and_slide()
