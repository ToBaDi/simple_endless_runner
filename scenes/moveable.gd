extends StaticBody2D


export var  speed : int = 1


func _physics_process(delta : float) -> void:
	position.x -= speed * delta

