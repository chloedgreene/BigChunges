extends Line2D

var point

func _physics_process(delta):
	point = get_parent().global_position
	add_point(point)

	if points.size() > 150:
		remove_point(0)
