class_name Hobbit

extends Node2D
@onready var sprite_2d: Sprite2D = $Sprite2D

var p_frames: int = 0
var ph_frames: int = 0

func _init() -> void:
	print("_init: %s, %s " % [get_instance_id(), name])
	
func _enter_tree() -> void:
	print("_enter_tree: %s, %s " % [get_instance_id(), name])

func _exit_tree() -> void:
	print("_exit_tree: %s, %s " % [get_instance_id(), name])

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("_ready: %s, %s " % [get_instance_id(), name])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	p_frames += 1
	print("_process %d" % p_frames)

func _physics_process(delta: float) -> void:
	ph_frames += 1
	print("_physics_process %d" % ph_frames)
	
