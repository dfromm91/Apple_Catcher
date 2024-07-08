extends Node2D

func _ready():
	update_health_display()
	
	
func _process(delta):
	update_health_display()	
	if Gamestate.health==0:
		get_tree().change_scene_to_file("res://gameover.tscn")
	if Gamestate.chomp==true:
		$chomp.play()
		Gamestate.chomp=false
	if Gamestate.oof==true:
		$oof.play()
		Gamestate.oof=false
	if Gamestate.gold==true:
		$jingle.play()
		Gamestate.gold=false
	if Gamestate.tick==true:
		$tick.play()
		Gamestate.tick=false

func update_health_display():
	for i in range(5):
		var apple_icon = get_node("health" + str(i + 1)) # Assuming your apple icons are named 'AppleIcon1', 'AppleIcon2', etc.
		apple_icon.visible = i < Gamestate.health
