extends Node2D

func _ready() -> void:
	$FogOfWar.add_actor($Actor)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		$Actor.automove = true
