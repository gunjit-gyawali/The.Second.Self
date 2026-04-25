extends Node2D

@onready var player1 = $CharacterA
@onready var player2 = $CharacterB

var current_player

func _ready():
	current_player = player1
	player1.set_active(true)
	player2.set_active(false)

func _process(_delta):
	if Input.is_action_just_pressed("switch_player"):
		switch_player()
	
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()

func switch_player():
	if current_player == player1:
		player1.set_active(false)
		player2.set_active(true)
		current_player = player2
	else:
		player2.set_active(false)
		player1.set_active(true)
		current_player = player1
