extends Resource
class_name King

@export var icone : Texture2D
@export var name : String
@export var white : bool

func initialisation():
	if white:
		icone =  load("res://DA/King_white.png") 
	else:
		icone =  load("res://DA/King.png") 

func check_coup_possible(case_depart : Case, case_arrivee : Case) -> bool:
	return true
