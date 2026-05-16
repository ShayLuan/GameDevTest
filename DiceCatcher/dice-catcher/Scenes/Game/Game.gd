extends Node2D

const DICE = preload("res://Scenes/Dice/Dice.tscn")
const MARGIN: float = 75.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawnd_dice()

func spawnd_dice() -> void:
	var newDice: Dice = DICE.instantiate()
	var vpr: Rect2 = get_viewport_rect()
	var new_x: float = randf_range(
		vpr.position.x + MARGIN,
		vpr.end.x - MARGIN
	)
	newDice.position = Vector2(new_x, -MARGIN)
	newDice.game_over.connect(_on_dice_game_over)
	add_child(newDice)
	
func _on_dice_game_over() -> void:
	print("Game over")


func _on_spawn_timer_timeout() -> void:
	spawnd_dice()
