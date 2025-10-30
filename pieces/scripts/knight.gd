extends Resource
class_name Knight

@export var icone : Texture2D
@export var name : String
@export var value : float
@export var white : bool


func initialisation():
	if white:
		icone =  load("res://DA/Knight_white.png") 
	else:
		icone =  load("res://DA/Knight.png") 

func check_coup_possible(case_depart : Case, case_arrivee : Case) -> bool:
	return true
