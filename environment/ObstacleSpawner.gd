extends Node2D

onready var timer=$Timer

var Obstacle=preload("res://environment/Obstacle.tscn")

func _on_Timer_timeout():
	spawn_obstacle()

func spawn_obstacle():
	var obstacle=Obstacle.instance()
	add_child(obstacle)
	obstacle.position.y=randi()
