extends Node2D

@export var player : Player
@export var animation : AnimationPlayer
@export var sprite : Sprite2D

func _process(_delta): 
	if player.direction == 1:
		sprite.flip_h = false
	elif player.direction == -1:
		sprite.flip_h = true
		
	if abs(player.velocity.x) > 0.0:
		animation.play("walk")
	else:
		animation.play("idle")
	
		
	
	
