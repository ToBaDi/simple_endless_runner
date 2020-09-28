extends KinematicBody2D


export var  speed : int = 500


func _physics_process(delta : float) -> void:
	move_and_slide(Vector2.LEFT * delta * speed)

