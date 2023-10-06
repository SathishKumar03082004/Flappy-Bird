extends RigidBody2D

var started=false

func _physics_process(delta):
	if Input.is_action_just_pressed("flap"):
		start()


func start():
	if started:return
	started=true
