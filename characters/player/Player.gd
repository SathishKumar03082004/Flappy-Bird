extends RigidBody2D

export var FLAP_FORCE=-200

const MAX_ROTATION_DEGREES=-30.0

onready var animator=$AnimationPlayer

var started=false

func _physics_process(delta):
	print(rotation_degrees)
	if Input.is_action_just_pressed("flap"):
		if !started:
			start()
		flap()
	
	if rotation_degrees<=MAX_ROTATION_DEGREES:
		angular_velocity=0

func start():
	if started:return
	started=true
#	gravity_scale =5.0
	animator.play("flap")

func flap():
#	linear_velocity.y=FLAP_FORCE
	angular_velocity=-8.0
