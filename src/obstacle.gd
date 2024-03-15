extends Node2D

signal move_to_start


func _process(delta: float) -> void:
	if global_position.x < -48:
		var rand = randi_range(20, 80)
		global_position = Vector2(394, rand)
