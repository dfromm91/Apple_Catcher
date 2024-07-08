extends Button

func _ready():
	# Assuming your Play button's name is "PlayButton"
	pass

func _on_PlayButton_pressed():
	# Change to the first level scene
	get_tree().change_scene_to_file("res://bg.tscn")


func _on_pressed():
	Gamestate.score=0
	Gamestate.health=5
	Gamestate.spawntime=2
	Gamestate.speed=350
	get_tree().change_scene_to_file("res://bg.tscn") # Replace with function body.


func _on_button_2_pressed():
	get_tree().quit()
