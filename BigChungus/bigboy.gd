extends KinematicBody2D


export (int) var speed = 200

var velocity = Vector2()

func _process(delta):
	look_at(lerp(position,get_global_mouse_position(),0.5))
	$Particles2D.look_at(get_global_mouse_position())

func get_input():
	velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
