extends Area2D
@onready var up = $up
@onready var down = $down
@onready var border = $"../border"

	
func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterA" or body.name == "CharacterB":
		up.hide()
		border.hide()
		border.collision_layer = 0

func _on_body_exited(body: Node2D) -> void:
	if body.name == "CharacterA" or body.name == "CharacterB":
		up.show()
		border.show()
		border.collision_layer = 1
