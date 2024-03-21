extends Area2D


func _on_body_entered(_body: Node2D) -> void:
	Game.is_game_over = true
