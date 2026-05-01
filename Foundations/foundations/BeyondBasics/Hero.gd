class_name Hero
extends Character

func say_info() -> void: 
	super()
	print("%s forgot to bring a %s\n%s has %d health" % [name, weapon, name, _health])
