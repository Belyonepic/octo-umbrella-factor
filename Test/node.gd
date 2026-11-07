extends Node

func _init() -> void:
	var num:String = "12345678"
	var digit_count:int = num.length()
	var output = ""
	for i in range(digit_count):
		var digit = num[i]
		output += digit
		if i < digit_count - 1 and (digit_count - i - 1) % 3 ==0:
			output += " "
	print(output)
