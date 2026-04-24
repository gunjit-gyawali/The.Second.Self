extends CharacterBody2D

@export var speed = 1500
@export var jump_force = -500
@export var gravity = 900

var active = false
@onready var cam = $Camera2D

func set_active(value: bool):
	active = value
	cam.enabled = value

func _physics_process(delta):
	if not active:
		return

	if not is_on_floor():
		velocity.y += gravity * delta

	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed

	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = jump_force
	

	move_and_slide()
