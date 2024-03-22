extends Node


@onready var game_over_screen = $GameOverScreen

func _ready() -> void:
	EventBus.game_over.connect(is_game_over)


func is_game_over() -> void:
	game_over_screen.show()
