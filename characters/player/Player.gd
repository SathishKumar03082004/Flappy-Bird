extends RigidBody2D

onready var animator=$AnimationPlayer

var started=false

func _physics_process(delta):
	if Input.is_action_just_pressed("flap"):
		if !started:
			start()


func start():
	if started:return
	started=true
	gravity_scale =5.0
	animator.play("flap")
