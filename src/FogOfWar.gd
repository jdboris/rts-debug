extends Node2D

onready var fog_viewport = $FogViewport
onready var fog_painter = $FogViewport/VisionPainter

var moved_actors: = []
var will_draw_rect = true

func add_actor( actor ):
	actor.connect("moved", self, "_on_Actor_moved", [actor])
	
	moved_actors.append(actor)
	update_vision()

func _on_Actor_moved( actor ):
	moved_actors.append(actor)

func _on_FogVisionPainter_draw() -> void:
	if will_draw_rect: 
		fog_painter.draw_rect(Rect2(Vector2.ZERO,fog_viewport.size), Color(0.5,0,0,1))
		will_draw_rect = false
	
	for actor in moved_actors:
		fog_painter.draw_circle(actor.global_position, 100, Color(1,1,1,1))
	
	moved_actors = []

func _process(delta: float) -> void:
	if(moved_actors.size() > 0):
		update_vision()

func update_vision( ):
	fog_viewport.render_target_update_mode = Viewport.UPDATE_ONCE
	fog_painter.update()
