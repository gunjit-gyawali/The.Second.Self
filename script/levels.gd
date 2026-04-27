extends Node2D

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/main_menu.tscn")

func _on_btn_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world.tscn")

func _on_btn_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world2.tscn")

func _on_btn_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world3.tscn")
	
func _on_btn_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world4.tscn")

func _on_btn_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world5.tscn")

func _on_btn_6_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world6.tscn")

func _on_btn_7_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world7.tscn")
