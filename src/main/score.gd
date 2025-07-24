extends Label


func _ready() -> void:
	EventBus.connect("update_score", _update_score)


func _update_score() -> void:
	text = str(EventBus.points)
