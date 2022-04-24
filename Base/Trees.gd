extends TileMap

var VERT = 52
var HOR = 52

func _ready():
	clear()
	randomize()
	_gen_trees()
	pass 



func _gen_trees():
	var filling :int = 0.03 * VERT * HOR
	var coord_x
	var coord_y
	for i in range(filling):
		coord_x = randi()%HOR
		coord_y = randi()%VERT
		if get_cell(coord_x, coord_y) == INVALID_CELL: 
			set_cell(coord_x - HOR/2, coord_y - VERT/2, randi()%2)
