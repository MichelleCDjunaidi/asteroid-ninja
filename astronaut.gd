extends Node2D
var speed = 150
var fall_dir = Vector2(0, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	var rand_dir = randf_range(-PI/4, PI/4)
	fall_dir = fall_dir.rotated(rand_dir)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += speed*delta*fall_dir
	rotation += speed*delta*0.01
	pass

func _on_area_2d_mouse_entered():
	on_death()
	pass # Replace with function body.

func on_death():
	#call animation player
	get_parent().get_parent().get_node("Earth").war_crime_happened()
	queue_free()
	pass

func on_life():
	print("life")
	queue_free()
	pass
