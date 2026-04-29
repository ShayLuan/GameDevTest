extends Node2D

@onready var plane: Sprite2D = %Plane
@onready var helicopter: Sprite2D = $Helicopter
@onready var eating_sound: AudioStreamPlayer = $EatingSound

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# var dir: Vector2 = plane.position.direction_to(helicopter.position)
	plane.look_at(get_global_mouse_position())
	#plane.move_local_x(200.0 * delta)
	#helicopter.translate(Vector2.DOWN * 20.0 * delta) # moving using translate
	#helicopter.rotate(2 * delta)
	
	plane.position += plane.transform.x * 60.0 * delta
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-1.5 * delta)
	if Input.is_action_pressed("ui_right"):
		plane.rotate(1.5 * delta)
	if Input.is_action_just_pressed("ui_accept"):
		plane.position = Vector2(350, 150)
		helicopter.global_position = Vector2(400, 580)
