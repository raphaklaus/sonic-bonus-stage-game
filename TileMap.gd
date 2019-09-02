extends TileMap

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var all_gen_tites = get_used_cells()
var angle

# Called when the node enters the scene tree for the first time.
func _ready():
	#for x in all_gen_tites:
		#print_debug(get_cellv(x))
	#set_custom_transform(Transform2D(PI/9, Vector2(22,33)))
	#cell_size = Vector2(10,10)
	#cell_custom_transform = Transform2D(PI, Vector2(100,100))
	#cell_custom_transform = Transform2D(PI/4, Vector2(12,99))
	#cell_custom_transform.rotated(PI/4)
	
	
	
	print_debug(all_gen_tites)
	
	#set_cellv(Vector2(1, 8), -1, false, false, true)
	#update_dirty_quadrants()
	print_debug(transform)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	angle = transform.rotated(delta / 2)
	transform = angle
	
	
