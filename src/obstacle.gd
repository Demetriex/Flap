extends Node2D

var speed := 100


func _process(delta: float) -> void:
	if global_position.x < Globals.despawn_point:
		queue_free()

	global_position.x = global_position.x - speed * delta
