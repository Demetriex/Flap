extends Node2D

var speed := 100


func _ready() -> void:
	EventBus.game_over.connect(_is_game_over)


func _process(delta: float) -> void:


	if global_position.x < Game.despawn_point:
		queue_free()

	global_position.x = global_position.x - speed * delta


func _is_game_over() -> void:
	set_process(false)
