extends GridContainer

@export var case_scene : PackedScene
var piece_is_selected : Case
var alphabet : Array[String] = ["A","B","C","D","E","F","G","H"]

func _ready() -> void:
	for ligne in range(8) :
		for colonne in range(8) :
			var bouton : Case = case_scene.instantiate()
			bouton.colonne = alphabet[colonne]
			bouton.ligne = str(8 - ligne)
			if (ligne + colonne)%2:
				bouton.black_case = true
			add_child(bouton)
			
func deplacer(case_arrive,case_depart) :
	pass
	
	
func has_been_press(piece_on_case,case_ref) :
	if piece_is_selected != null and piece_is_selected != case_ref:
		deplacer(case_ref, piece_is_selected)
		piece_is_selected = null
	if piece_is_selected == null:
		if case_ref.piece_on_case:
			piece_is_selected = case_ref
