extends Node2D
const Speed = 60;
var direction = 1;
@onready var trai: RayCast2D = $trai
@onready var phai: RayCast2D = $phai
@onready var animated_sprite = $AnimatedSprite2D 
func _process(delta): 
	if phai.is_colliding():
		
		direction=-1
		animated_sprite.flip_h = true
	if trai.is_colliding():
		
		direction= 1;
		animated_sprite.flip_h = false;

	position.x+=direction*Speed*delta;
 
