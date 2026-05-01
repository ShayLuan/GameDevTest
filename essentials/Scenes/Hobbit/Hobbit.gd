class_name Hobbit

extends Node2D
@export var hide_time: float = 2.0
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var hide_timer: Timer = $HideTimer

signal kill_wizard

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("hit_wizard"):
		kill_wizard.emit()

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
	# hide_timer.start(hide_time)
	pass
	
func _process(delta: float) -> void:
	rotate(PI * delta)

func hit_by_spell() -> void:
	scale = Vector2(0.2, 0.2)
	set_process(false)

	
