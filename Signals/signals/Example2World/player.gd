extends CharacterBody2D

@onready var sprite_2d: Sprite2D = $Sprite2D

const MOVE_SPEED: float = 250.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		sprite_2d.position.x -= MOVE_SPEED * delta
	if Input.is_action_pressed("ui_right"):
		sprite_2d.position.x += MOVE_SPEED * delta
	if Input.is_action_pressed("ui_up"):
		sprite_2d.position.y -= MOVE_SPEED * delta
	if Input.is_action_pressed("ui_down"):
		sprite_2d.position.y += MOVE_SPEED * delta
	
