extends ParallaxBackground


func _process(_delta: float) -> void:
	if Game.is_game_over:
		return
	scroll_base_offset = scroll_base_offset + Vector2(-1, 0)
