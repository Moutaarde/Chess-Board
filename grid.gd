extends GridContainer

@export var case_scene : PackedScene

var alphabet : Array[String] = ["A","B","C","D","E","F","G","H"]

func _ready() -> void:
	for ligne in range(8) :
		for colonne in range(8) :
			var bouton : Case = case_scene.instantiate()
			bouton.colonne = alphabet[colonne]
			bouton.ligne = str(8 - ligne)
			add_child(bouton)
