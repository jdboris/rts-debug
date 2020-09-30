extends Node2D

export var will_draw_rect_once = true
export var will_draw_circle = true

func _on_FogVisionPainter_draw() -> void:
	if will_draw_rect_once: 
		$Viewport/Painter.draw_rect(Rect2(Vector2(100,100),Vector2(200,200)), Color(0.5,0,0,1))
		will_draw_rect_once = false
	
	if will_draw_circle:
		$Viewport/Painter.draw_circle(Vector2(500,200), 100, Color(1,1,1,1))

func _process(delta: float) -> void:
	if will_draw_circle:
		$Viewport/Painter.update()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == BUTTON_LEFT:
			will_draw_rect_once = true
		if event.button_index == BUTTON_RIGHT:
			will_draw_circle = true
		
