extends ParallaxBackground


func _process(_delta: float) -> void:
	scroll_base_offset = scroll_base_offset + Vector2(-1, 0)
