extends KinematicBody2D

signal moved
export var automove = true

func _physics_process(delta: float) -> void:
	if automove:
		move_and_slide(Vector2(100, 0))
		emit_signal("moved")
