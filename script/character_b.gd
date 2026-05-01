extends CharacterBody2D

@onready var idle = $idel
@onready var front = $front
@onready var back = $back
@onready var jump = $Jump


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

	var direction = Input.get_axis("left", "right")
	velocity.x = direction * speed

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_force
		jump.play()


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
	
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("block"):
		body.collision_layer = 1
		body.collision_mask = 1

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("block"):
		body.collision_layer = 2
		body.collision_mask = 2
