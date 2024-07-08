extends Area2D
@export var scene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	
	position.x=335
	position.y=0
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=Gamestate.speed*delta
	if position.y>680:
		Gamestate.health-=1
		Gamestate.oof=true
		queue_free()




func _on_area_entered(area):
	Gamestate.chomp=true
	queue_free()
	Gamestate.score+=10
	if Gamestate.score %30==0:
		if Gamestate.spawntime > 1:
			Gamestate.speed+=700.0/Gamestate.speed
			Gamestate.spawntime-=Gamestate.spawntime / 5.0
		elif Gamestate.spawntime > 0.8 :
			Gamestate.spawntime-=Gamestate.spawntime / 15.0
			Gamestate.speed+=300.0/Gamestate.speed
		else:
			Gamestate.spawntime-=Gamestate.spawntime / 25.0
			Gamestate.speed+=100.0/Gamestate.speed
	
