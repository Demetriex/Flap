extends Node

var points := 0

signal update_score
signal game_over


func add_point() -> void:
	points += 1
	emit_signal("update_score")


func reset_points() -> void:
	points = 0
