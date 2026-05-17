extends CharacterBody2D

const JUMP_POWER: float = -350.0

var _gravity: float = ProjectSettings.get("physics/2d/default_gravity")
var _jumped: bool = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("power"):
		_jumped = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity.y += _gravity * delta
	if _jumped:
		velocity.y = JUMP_POWER 
		_jumped = false
		
	#if Input.is_action_just_pressed("power"):
		#velocity.y = JUMP_POWER
	
	move_and_slide()
