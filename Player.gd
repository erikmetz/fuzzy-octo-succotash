extends KinematicBody2D

export (int) var speed
var screensize

func _ready():
	screensize = get_viewport_rect().size

func _process(delta):
	pass
	
func _physics_process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)