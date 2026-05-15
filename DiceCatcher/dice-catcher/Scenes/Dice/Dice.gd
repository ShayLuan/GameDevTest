extends Area2D

class_name Dice

const SPEED = 85.0
const ROTATION_SPEED = 5.0

@onready var sprite_2d: Sprite2D = $Sprite2D

var rotation_dir: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# "randomize" the rotation direction
	if randf() < 0.5: rotation_dir *= -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.y += delta * SPEED
	sprite_2d.rotate(delta * ROTATION_SPEED * rotation_dir)
