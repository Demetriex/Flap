extends ParallaxBackground


func _ready() -> void:
	EventBus.game_over.connect(is_game_over)


func _process(_delta: float) -> void:
	scroll_base_offset = scroll_base_offset + Vector2(-1, 0)


func is_game_over() -> void:
	set_process(false)
