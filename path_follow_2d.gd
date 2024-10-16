extends PathFollow2D
var asteroid_scene = load("res://asteroid.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	progress_ratio = randf()
	var asteroid_instance = asteroid_scene.instantiate()
	add_child(asteroid_instance)
	print(progress_ratio)
	pass # Replace with function body.
