extends Node2D

const DICE = preload("res://Scenes/Dice/Dice.tscn")
const MARGIN: float = 75.0
const STOPPABLE_GROUP: String = "stoppable"

@onready var spawn_timer: Timer = $SpawnTimer

# reloading the game
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()

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
	
func pause_all() -> void:
	spawn_timer.stop()
	var to_stop: Array[Node] = get_tree().get_nodes_in_group(STOPPABLE_GROUP)
	for item in to_stop:
		item.set_physics_process(false)
	
func _on_dice_game_over() -> void:
	print("Game over")
	pause_all()


func _on_spawn_timer_timeout() -> void:
	spawnd_dice()
