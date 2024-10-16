extends Path2D
var asteroid_scene = load("res://asteroid.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	$PathFollow2D.progress_ratio = randf()
	var asteroid_instance = asteroid_scene.instantiate()
	asteroid_instance.position = $PathFollow2D.position
	asteroid_instance.rotation += randf_range(-PI/4, PI/4)
	add_child(asteroid_instance)
	pass # Replace with function body.
