extends Area2D

@onready var timer = $Timer
@onready var player = %player
@onready var game_manager = %gameManager


func _on_body_entered(body):
	print("usao si")
	if body.get_name() == "player" and game_manager.mozeTP == 1:
		timer.start()


func _on_body_exited(body):
	if body.get_name() == "player":
		timer.stop()
		
func _on_timer_timeout():
	timer.stop()
	player.position.x = 555
	player.position.y = -120
	
