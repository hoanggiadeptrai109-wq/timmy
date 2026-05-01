extends Node2D;
const Speed = 60;
func _process(delta): 
	position.x+=Speed*delta;
