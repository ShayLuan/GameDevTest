extends Area2D

class_name Fox

# 200 pixels/second
@export var speed: float = 300.0
@onready var sprite_2d: Sprite2D = $Sprite2D

# collision tends to be more accurate with physics process
func _physics_process(delta: float) -> void:
	var move: float = Input.get_axis("ui_left", "ui_right")
	# is_action_pressed for continuous movement
	#if Input.is_action_pressed("ui_left"):
		#move -= speed
	#if Input.is_action_pressed("ui_right"):
		#move += speed
	
	if !is_zero_approx(move):
		sprite_2d.flip_h = move > 0.0
	
	position.x += move * delta * speed
