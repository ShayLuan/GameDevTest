class_name Wizard

extends Node2D
@onready var reveal_timer: Timer = $RevealTimer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()

func _on_reveal_timer_timeout() -> void:
	show() 
