extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=Gamestate.speed*delta


func _on_area_entered(area):
	Gamestate.speed*=0.97
	Gamestate.spawntime*=1.05
	Gamestate.tick=true
	queue_free()
	
