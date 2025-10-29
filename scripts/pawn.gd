extends Resource
class_name Pawn

@export var icone : Texture2D
@export var name : String
@export var value : float
@export var white : bool


func initialisation():
	if white:
		icone =  load("res://DA/Pawn_white.png") 
	else:
		icone =  load("res://DA/Pawn.png") 
		
