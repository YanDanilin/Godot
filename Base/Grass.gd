extends TileMap

var VERT = 54
var HOR = 54


func _ready():
	clear()
	randomize()
	_gen_grass()
	pass 

func _gen_grass():
	var cells = [0, 2, 3, 4, 5, 9]
	for i in range(VERT):
		for j in range(HOR):
			set_cell(i - HOR/2, j - VERT/2, cells[1 + randi()%5])
	var x1 = -1
	var y1 = -1
	for i in range(VERT + 2):
		set_cell(x1 - HOR/2, i - 1 - VERT/2, 6)
		set_cell(HOR/2, i - 1 - VERT/2, 6)
	for j in range(HOR):
		set_cell(j - HOR/2, y1 - VERT/2, 6)	
		set_cell(j - HOR/2, VERT/2, 6)	
