extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=Gamestate.speed*delta


func _on_area_entered(area):
	Gamestate.chomp=true
	if Gamestate.health<5:
		Gamestate.health+=1
	Gamestate.score+=50
	Gamestate.gold=true
	queue_free()
