extends Resource
class_name Queen

@export var icone : Texture2D
@export var name : String
@export var value : float
@export var white : bool


func initialisation():
	if white:
		icone =  load("res://DA/Queen_white.png") 
	else:
		icone =  load("res://DA/Queen.png") 
