extends Node2D

const SPEEDX = 60
var ziv = 1
var direction = 1
@onready var ray_cast_right = $rayCastRight
@onready var ray_cast_left = $rayCastLeft
@onready var game_manager = %gameManager
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collisionShape = $killzone/CollisionShape2D
@onready var death_animtion = $deathAnimtion


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	if ziv == 1:
		position.x += direction * SPEEDX * delta
	


func _on_slime_killed_body_entered(body):
	if body.get_name() == "player":
		collisionShape.queue_free()
		ziv = 0
		animated_sprite_2d.speed_scale = 0
		animated_sprite_2d.frame = 2
		death_animtion.play("smrt")
		game_manager.addPoint()
		game_manager.addPoint()
		print("ubio si ga")
		
