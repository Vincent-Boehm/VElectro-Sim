extends Node2D

var isBeingMoved: bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var isBeingMoved = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if isBeingMoved == false:
		global_position.x = round( get_global_mouse_position().x / 8) * 8
		global_position.y = round(get_global_mouse_position().y / 8 ) * 8
		
	pass
	
func _input(event: InputEvent):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == 1:
		isBeingMoved = true
