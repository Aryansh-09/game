extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_shift"):
		self.position.y += 50
	elif Input.is_action_pressed("ui_down"):
		self.position.y += 10
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_shift"):
		self.position.y -= 50
	elif Input.is_action_pressed("ui_up"):
		self.position.y -= 10
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_shift"):
		self.position.x += 50
	elif Input.is_action_pressed("ui_right"):
		self.position.x += 10
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_shift"):
		self.position.x -= 50
	elif Input.is_action_pressed("ui_left"):
		self.position.x -= 10

	if Input.is_action_pressed("ui_reset"):
		self.position = Vector2(0,0)
