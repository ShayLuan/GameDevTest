extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	pass


func _on_plate_1_body_entered(body: Node2D) -> void:
	print("body entered")
	print(body)

func _on_plate_2_body_entered(body: Node2D) -> void:
	print("body entered")
	print(body)

func _on_plate_3_body_entered(body: Node2D) -> void:
	print("body entered")
	print(body)
