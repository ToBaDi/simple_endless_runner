extends KinematicBody2D


class_name Player


export var jump_velocity : float = 1500.0
export var gravity_scale : float = 20.0

var velocity : Vector2 = Vector2.ZERO


func _physics_process(delta : float) -> void:
	velocity.y += gravity_scale
	velocity = move_and_slide(velocity*delta, Vector2.UP)


func _input(event : InputEvent) -> void:
	if event.is_action_pressed("Jump"):
		velocity.y -= jump_velocity





