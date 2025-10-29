extends Resource
class_name Rook

@export var icone : Texture2D
@export var name : String
@export var value : float
@export var white : bool


func initialisation():
	if white:
		icone =  load("res://DA/Rook_white.png") 
	else:
		icone =  load("res://DA/Rook.png") 

func action() : 
	pass
