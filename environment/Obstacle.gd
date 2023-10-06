extends Node2D

const SPEED=200

func _physics_process(delta):
	position.x += -SPEED*delta
	if global_position.x<=-200:
		queue_free()
		print("bye")
