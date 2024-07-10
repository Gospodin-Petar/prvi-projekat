extends Area2D

@onready var game_manager = %gameManager
@onready var coin_pick_up_animation = $coinPickUpAnimation

# Called when the node enters the scene tree for the first time.
func _ready():
	print("coin se stvorio") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.get_name() == "player":
		game_manager.addPoint()
		coin_pick_up_animation.play("pickUpCoin") # Replace with function body.
