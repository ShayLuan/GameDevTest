extends Node2D
@onready var background: Sprite2D = $Background
@onready var background_2: Sprite2D = $Background2
@onready var background_3: Sprite2D = $Background3
@onready var background_4: Sprite2D = $Background4


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	background_2.visible = false
	background_3.visible = false
	background_4.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	pass


#func _on_plate_1_body_entered(body: Node2D) -> void:
	#print(body)
	#print("Entered Pink")
	#background_2.visible = true
#
#
#func _on_plate_2_body_entered(body: Node2D) -> void:
	#print(body)
	#print("Entered Yellow")
	#background_3.visible = true
#
#func _on_plate_3_body_entered(body: Node2D) -> void:
	#print(body)
	#print("Entered Blue")
	#background_4.visible = true


#func _on_plate_1_body_exited(body: Node2D) -> void:
	#background_2.visible = false
#
#
#func _on_plate_2_body_exited(body: Node2D) -> void:
	#background_3.visible = false
#
#
#func _on_plate_3_body_exited(body: Node2D) -> void:
	#background_4.visible = false
