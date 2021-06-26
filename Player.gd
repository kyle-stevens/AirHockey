extends RigidBody2D

export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
func _integrate_forces(state):
	pass
	if Input.is_action_pressed("mouse_click"):
		target = get_global_mouse_position()
	else:
		applied_force = Vector2(0,0)
		
	velocity = position.direction_to(target) * (speed)# * (position.distance_to(target) * 0.005)) #will perfect later to do faster speed farther away
	
	if position.distance_to(target) > 20:
		#velocity = move_and_slide(velocity)
		var rotation = look_at(target)
		applied_force = velocity.rotated(position.angle_to(target))
