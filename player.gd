extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const GRAVITY = 1
const SPEED = 100

var free_fall = false

var stop_movement = false

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_left"):
		velocity.x -= SPEED
	elif Input.is_action_just_pressed("ui_right"):
		velocity.x += SPEED	
	
	var level_angle = get_node("../TileMap").transform.get_rotation()
	
	if get_node("../TileMap").transform.get_rotation() < 0:
		level_angle = PI + (PI - (get_node("../TileMap").transform.get_rotation() * -1))
	
	
	velocity.y += GRAVITY

	move_and_slide(velocity)