extends CharacterBody2D

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

@export var JUMP_VELOCITY = 200.0
@onready var anim_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	EventBus.game_over.connect(self.is_game_over)


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("jump"):
		anim_player.play("flap")
		velocity.y = -JUMP_VELOCITY

	move_and_slide()


func is_game_over() -> void:
	set_physics_process(false)
