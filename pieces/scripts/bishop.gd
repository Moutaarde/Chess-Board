extends Resource
class_name Bishop

@export var icone : Texture2D
@export var name : String
@export var value : float
@export var white : bool

func initialisation():
	if white:
		icone =  load("res://DA/Bishop_white.png") 
	else:
		icone =  load("res://DA/Bishop.png") 
