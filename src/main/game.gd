extends Node2D

var obstacle := preload("res://src/obstacle/obstacle.tscn")

@onready var timer := $Timer
@onready var obstacles_container := $ParallaxBackground/Obstacles


func _ready() -> void:
	timer.connect("timeout", _create_obstacle)
	EventBus.game_over.connect(_is_game_over)


func _is_game_over():
	timer.stop()


func _set_obstacle_position(instance) -> void:
	var rand = randi_range(20, 80)
	instance.global_position = Vector2(Game.spawn_point, rand)


func _create_obstacle() -> void:
	var instance := obstacle.instantiate()
	_set_obstacle_position(instance)
	obstacles_container.add_child(instance)
