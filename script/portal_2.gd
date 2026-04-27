extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	$AudioStreamPlayer2D.play()
	$Timer.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scene/world3.tscn")
