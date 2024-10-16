extends Node2D
@export var warcrime_ratio_value = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().get_node("warcrime_bar").size.x = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func _on_area_2d_area_entered(area):
	warcrime_ratio_value += 0.2
	get_parent().get_node("warcrime_bar").size.x = warcrime_ratio_value*1150
	area.get_parent().on_death()
	pass # Replace with function body.
