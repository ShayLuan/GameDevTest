extends Sprite2D

var speed = 400
var angular_speed = PI
var toggled_on = true

## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.

func toggle() -> void:
	toggled_on = !toggled_on

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if toggled_on:
		rotation += angular_speed * delta
		var velocity = Vector2.UP.rotated(rotation) * speed
		position += velocity * delta


#func _on_button_pressed() -> void:
	#toggle()
#
#
#func _on_timer_timeout() -> void:
	#self.visible = !self.visible


func _on_example_1_world_toggle_icon_spin() -> void:
	toggle()
