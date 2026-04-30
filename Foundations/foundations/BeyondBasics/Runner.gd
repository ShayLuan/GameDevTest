@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print("I am alive")
	var aragorn: Character = Character.new()
	aragorn.print_health()
	aragorn.health = 100
	aragorn.print_health()
	
	var riley: Character = Character.new()
	riley.print_health()
	print("Setting riley's health to 200... ")
	riley.health = 200
	riley.print_health()
