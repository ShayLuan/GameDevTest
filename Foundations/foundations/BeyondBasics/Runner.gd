@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print("I am alive")
	
	var riley: Character = Character.new(250, "Riley", "Whip")
	riley.say_info()
