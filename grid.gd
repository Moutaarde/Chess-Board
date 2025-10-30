extends GridContainer

@export var case_scene : PackedScene
var case_selected : Case = null
var alphabet : Array[String] = ["A","B","C","D","E","F","G","H"]

func _ready() -> void:
	for ligne in range(8) :
		for colonne in range(8) :
			var bouton : Case = case_scene.instantiate()
			bouton.connect("case_pressed",case_pressed)
			bouton.colonne = colonne
			bouton.ligne = 8 - ligne
			bouton.case = alphabet[colonne] + str(8 - ligne)
			if (ligne + colonne)%2:
				bouton.black_case = true
			Global.echiquier[ligne].append(bouton)
			add_child(bouton)

func deplacer(case_depart, case_arrivee):
	if case_depart.piece_on_case != null:
		pass

func case_pressed(ref_case) :
	if case_selected != null and case_selected != ref_case:
		deplacer(case_selected, ref_case)
		case_selected = null
	elif case_selected == null:
		if ref_case.piece_on_case:
			case_selected = ref_case
