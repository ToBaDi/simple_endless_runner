extends Node2D



func _on_DeathZone_body_entered(body : PhysicsBody2D) -> void:
	if body.is_in_group("Player"):
		get_tree().reload_current_scene()
