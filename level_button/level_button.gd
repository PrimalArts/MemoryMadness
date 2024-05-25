extends TextureButton

@onready var level = $Level
@onready var sound = $Sound


var _level_number: int = 0

func _ready():
	pass


func set_level_number(level_num: int) -> void:
	_level_number = level_num
	var l_data = GameManager.LEVELS[_level_number]
	level.text = "%sx%s" % [l_data.rows, l_data.cols]


func _on_pressed():
	SoundManager.play_btn_click(sound)
	SignalManager.on_level_selected.emit(_level_number)
