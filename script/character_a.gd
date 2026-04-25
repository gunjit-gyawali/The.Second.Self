extends CharacterBody2D

@onready var idle = $idel
@onready var front = $front
@onready var back = $back

@onready var cam = $Camera2D

@export var speed = 1500
@export var jump_force = -600
@export var gravity = 900

var active = false

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

	if direction == 0:
		idle.visible = true
		front.visible = false
		back.visible = false
	elif direction > 0:
		idle.visible = false
		back.visible = false
		front.visible = true
	else :
		idle.visible = false
		front.visible = false
		back.visible = true

	move_and_slide()
