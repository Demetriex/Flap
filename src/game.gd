extends Node2D


@onready var timer := $Timer
@onready var obstacles := $ParallaxBackground/Obstacles


func _process(delta: float) -> void:
	pass


func _set_obstacle_position(obstacle) -> void:
	var rand = randi_range(20, 80)
	obstacle.global_position = Vector2(Globals.spawn_point, rand)
