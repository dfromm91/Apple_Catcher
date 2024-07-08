extends Node2D

func _ready():
	update_health_display()
	

func update_health_display():
	for i in range(5):
		var apple_icon = get_node("health" + str(i + 1)) # Assuming your apple icons are named 'AppleIcon1', 'AppleIcon2', etc.
		apple_icon.visible = i < Gamestate.health



