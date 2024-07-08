extends Node2D
@export var redscene:PackedScene
@export var greenscene:PackedScene
@export var goldscene:PackedScene
@export var clockscene:PackedScene
func _process(delta):
	var timer=$Timer
	timer.wait_time=Gamestate.spawntime

func spawn_apples():
	var newapple:Node
	var randomnum = randi_range(1,40)
	if randomnum<=7:
		newapple=greenscene.instantiate()
	elif randomnum==8:
		newapple=goldscene.instantiate()
	elif randomnum==9:
		newapple=clockscene.instantiate()
	else:
		newapple=redscene.instantiate()
	self.add_child(newapple)
	newapple.position.y=0
	newapple.position.x=randf_range(10,690)
	

