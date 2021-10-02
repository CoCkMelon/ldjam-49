extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	add_force(Vector3(get_viewport().get_mouse_position().x/1000,10,0),Vector3(0,0,0))
	if Input.is_action_pressed("move_right"):
		add_torque(Vector3(1,0,0))
		print("right")
	if Input.is_action_pressed("move_left"):
		add_torque(Vector3(-1,0,0))
	if global_transform.origin.y < -10:
		global_transform.origin = get_node("/root/Spatial/spawn").global_transform.origin
