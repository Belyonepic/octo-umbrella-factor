extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var number_textures: Dictionary[int, Texture2D] = {
	0:preload("res://Assets/Sprites/number-sprites/number-sprite-0.svg"),
	1:preload("res://Assets/Sprites/number-sprites/number-sprite-1.svg"),
	2:preload("res://Assets/Sprites/number-sprites/number-sprite-2.svg"),
	3:preload("res://Assets/Sprites/number-sprites/number-sprite-3.svg"),
	4:preload("res://Assets/Sprites/number-sprites/number-sprite-4.svg"),
	5:preload("res://Assets/Sprites/number-sprites/number-sprite-5.svg"),
	6:preload("res://Assets/Sprites/number-sprites/number-sprite-6.svg"),
	7:preload("res://Assets/Sprites/number-sprites/number-sprite-7.svg"),
	8:preload("res://Assets/Sprites/number-sprites/number-sprite-8.svg"),
	9:preload("res://Assets/Sprites/number-sprites/number-sprite-9.svg"),
}

var value: int = 0
var width: int = 15

func update_texture():
	sprite_2d.texture = number_textures[value]
	match value:
		0:
			width = 35
		1:
			width = 27
		2:
			width = 35
		3:
			width = 37
		4:
			width = 35
		5:
			width = 35
		6:
			width = 35
		7:
			width = 35
		8:
			width = 35
		9:
			width = 35
func _ready() -> void:
	sprite_2d.centered = false
	update_texture()
