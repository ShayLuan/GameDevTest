@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var text: String = "Gandalf the Grey"
	print(text.length())
	
	var name: String = "Aragorn"
	print(name[0])
	print(name[2])
	print(name[3])
	
	var quote: String = "One Ring to rule them all"
	var small_string: String = quote.substr(2)
	print(small_string)
	
	var age: int = 30
	var health: float = 98.468
	
	var ps: String = "Health: %.2f" % health
	print(ps)
	
	var psm: String = "Health: %.2f\nAge: %d" % [health, age]
	print(psm)
