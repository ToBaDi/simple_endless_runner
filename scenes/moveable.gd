extends StaticBody2D


export var  speed : int = 500


func _physics_process(delta : float) -> void:
	position.x -= 1 * delta

