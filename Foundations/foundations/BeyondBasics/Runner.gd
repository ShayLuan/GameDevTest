@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	#print("I am alive")
	#
	#var riley: Character = Character.new(250, "Riley", "Whip")
	#riley.say_info()
	#print("Riley takes 20 damage. ")
	#riley._health -= 20
	#riley.print_health()
	#
	#print("Using health getter: ", riley.get_health())
	#riley.set_health(400)
	#riley.print_health()
	#riley.set_health(234)
	#riley.say_info()

	var riley: Character = Character.new(250, "Riley", "Whip")
	riley.health = 2000
	print(riley.health)
	
	var kenzie: Character = Character.new(180, "Kenzie", "Dagger")
	kenzie.say_info()
	
	
	
	
