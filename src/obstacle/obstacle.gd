extends Node2D

var speed := 100


func _process(delta: float) -> void:
	if Game.is_game_over:
		set_process(false)

	if global_position.x < Game.despawn_point:
		queue_free()

	global_position.x = global_position.x - speed * delta
