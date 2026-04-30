class_name Character

var health: int = 50
var name: String = "Riley"
var weapon: String = "Whip"

func _init(p_health: int, p_name: String, p_weapon: String) -> void:
	health = p_health
	name = p_name
	weapon = p_weapon

func print_health() -> void:
	print("Health: %d" % health)

func say_info() -> void: 
	print("%s wields a %s\n%s has %d health" % [name, weapon, name, health])
