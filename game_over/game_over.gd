extends Control

@onready var moves_labe = $NinePatchRect/MC/VB/HB/MovesLabe
@onready var exit_button = $NinePatchRect/MC/VB/ExitButton

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_game_over.connect(on_game_over)

func on_game_over(moves: int):
	moves_labe.text = str(moves)
	show()

func _on_exit_button_pressed():
	hide()
	SignalManager.on_game_exit_pressed.emit()
