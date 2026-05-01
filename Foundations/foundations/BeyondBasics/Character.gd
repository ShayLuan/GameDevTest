class_name Character

static var character_count: int = 0 # exists at the class level

static func get_character_count() -> String:
	return "There are %d characters currently. " % character_count
	
const MAX_SPEED = 9000

var _health: int = 50

#var health: int:
	#get:
		#print("get health")
		#return _health
	#set(value):
		#print("set health")
		#_health = clampi(value, 0, 300)

var health: int: 
	get = get_health, set = set_health
	
var weapon: String = "CURRENTLY NO WEAPON":
	get:
		return weapon
	set(value):
		weapon = value

var name: String = "CURRENTLY NO NAME":
	get:
		return name
	set(value):
		name = value



func _init(p_health: int, p_name: String, p_weapon: String) -> void:
	_health = p_health
	name = p_name
	weapon = p_weapon
	character_count += 1

func print_health() -> void:
	print("Health: %d" % _health)

func say_info() -> void: 
	print("%s wields a %s\n%s has %d health" % [name, weapon, name, _health])
	
func get_health() -> int:
	print("get_health() invoked")
	return _health
	
func set_health(new_health: int) -> void:
	print("set_health() invoked")
	if new_health >= 300: health = 300
	elif new_health <= 0: health = 0
	
#func _to_string() -> String:
	#return "%s reports for duty! " % name
	
