class_name NumberNode
extends MathNode

var _unit_display = preload("res://Scenes/display_unit.tscn")

var value: int = 0
var spacing: int = 0
var extra_spacing:int = 0

func value_string() -> String:
	return str(value)

func _ready():
	value = 1234234567
	var digit_count = value_string().length()
	for i in range(digit_count):
		var digit = value_string()[i]
		var unit = _unit_display.instantiate()
		unit.value = value_string()[i]
		add_child(unit)
		unit.position.x += spacing
		if i < digit_count - 1 and (digit_count - i - 1) % 3 == 0:
			spacing += 20
		spacing += unit.width
