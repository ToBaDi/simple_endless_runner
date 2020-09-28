extends StaticBody2D


export var  speed : int = 8


func _physics_process(delta : float) -> void:
	position.x -= speed * delta

