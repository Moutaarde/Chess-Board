extends Button
class_name Case

signal case_pressed(case : Case)

@export var piece_on_case : Resource

var colonne : int
var ligne : int
var case : String
var black_case : bool = false

func _ready() -> void:
	initialisation()

func _on_button_down() -> void:
	if piece_on_case :
		case_pressed.emit(self)

func initialisation() :
	if black_case:
		icon = load("res://DA/black_square.png")
	else:
		icon = load("res://DA/white_square.png")
	if ligne == 2 or ligne == 7 :
		piece_on_case = load("res://pieces/pawn.tres")
	if case in ["A1", "H1", "A8", "H8"]:
		piece_on_case = load("res://pieces/rook.tres")  
	elif case in ["B1", "G1", "B8", "G8"]:
		piece_on_case = load("res://pieces/knight.tres")  
	elif case in ["C1", "F1", "C8", "F8"]:
		piece_on_case = load("res://pieces/bishop.tres")  
	elif case in ["D1", "D8"]:
		piece_on_case = load("res://pieces/queen.tres")  
	elif case in ["E1", "E8"]:
		piece_on_case = load("res://pieces/king.tres") 
	if piece_on_case:
		if ligne > 6: 
			piece_on_case.white = false
		else:
			piece_on_case.white = true
		piece_on_case.initialisation()
		$Texture_piece.texture = piece_on_case.icone
