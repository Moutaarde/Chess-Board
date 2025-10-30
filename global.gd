extends Node

var echiquier : Array[Array] = [[],[],[],[],[],[],[],[]]

func check_coup_legal(case_depart : Case, case_arrivee : Case) -> bool:
	if case_depart.piece_on_case != null:
		case_depart.piece_on_case.check_coup_possible(case_depart, case_arrivee)
		return true
	else:
		return false

func check_for_check() -> bool:
	return false
