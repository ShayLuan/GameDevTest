class_name Wizard

extends Node2D

signal cast_spell

@onready var reveal_timer: Timer = $RevealTimer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()

func _on_reveal_timer_timeout() -> void:
	show() 
	
func _on_spell_timer_timeout() -> void:
	cast_spell.emit()

func hit_by_spell() -> void:
	scale = Vector2(0.2, 0.2)
