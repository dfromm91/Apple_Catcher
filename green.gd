extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=Gamestate.speed*delta
	if position.y>680:
		queue_free()


func _on_area_entered(area):
	Gamestate.health-=1
	Gamestate.oof=true
	queue_free()
