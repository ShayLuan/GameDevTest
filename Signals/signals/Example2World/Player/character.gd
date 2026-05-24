extends CharacterBody2D

@onready var player: Sprite2D = $Player

var GRAVITY: float = ProjectSettings.get_setting("physics/2d/default_gravity")
const MOVE_SPEED: float = 300.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	########################################################
	################# DIRECTIONAL MOVEMENT #################
	########################################################
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")
	
	# 2. Assign the movement to the built-in velocity variable
	if direction_x:
		velocity.x = direction_x * MOVE_SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, MOVE_SPEED)
		
	if direction_y:
		velocity.y = direction_y * MOVE_SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, MOVE_SPEED)
		
	########################################################
	##################### GRAVITY ##########################
	########################################################
	if not is_on_floor():
		velocity.y += GRAVITY * delta
		
	move_and_slide()
