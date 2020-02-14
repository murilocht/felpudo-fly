extends Position2D

onready var cano = preload("res://scenes/cano.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	var novoCano = cano.instance()
	novoCano.position += Vector2(890, rand_range(-500, 500))
	get_owner().add_child(novoCano)