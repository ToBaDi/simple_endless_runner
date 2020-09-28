extends KinematicBody2D


class_name Player


export var jump_velocity : float = 1000.0
export var gravity_scale : float = 50.0

var velocity : Vector2 = Vector2.ZERO


func _physics_process(delta : float) -> void:
	if velocity.y < 1500:
		velocity.y += gravity_scale
# warning-ignore:return_value_discarded
	move_and_slide(velocity*delta, Vector2.UP)


func _input(event : InputEvent) -> void:
	if is_on_floor():
		velocity = Vector2.ZERO
		if event.is_action_pressed("Jump"):
			velocity.y -= jump_velocity





