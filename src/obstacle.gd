extends Node2D


func _process(_delta: float) -> void:
	if global_position.x < Globals.despawn_point:
		queue_free()
