extends Button
class_name Case

@export var piece_on_case : Resource

var colonne : String
var ligne : String

func _ready() -> void:
	icon = piece_on_case.icone

func _on_button_down() -> void:
	print(colonne, ligne)
