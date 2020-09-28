extends Node2D


class_name Spawner


export(Array, PackedScene) var obstacles : Array

var rand : RandomNumberGenerator = RandomNumberGenerator.new()
var index : int = 0



func _on_Timer_timeout():
	rand.randomize()
	index = rand.randi_range(0, obstacles.size()-1)
	add_child_below_node(self, obstacles[index].instance())
	
