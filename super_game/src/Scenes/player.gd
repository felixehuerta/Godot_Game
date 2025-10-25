extends CharacterBody3D

const SPEED = 10.0
const JUMP_VELOCITY = 4.5
var SENSIBILITY := .2

@onready var cam = $Pivote

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta: float) -> void:
	movimiento(delta)
	move_and_slide()
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * SENSIBILITY))
		cam.rotate_x(deg_to_rad(-event.relative.y * SENSIBILITY))
		cam.rotation.x = clamp(cam.rotation.x, deg_to_rad(-90), deg_to_rad(45))


func movimiento(delta:float) -> void:
		#Add the gravity
		if not is_on_floor():
			velocity += get_gravity() * delta
			
		#Handle jump
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			
		var input_dir := Input.get_vector("Izquierda (A)", "Derecha (D)", "Adelante (W)", "Abajo (S)")
		var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
		if direction:
			velocity.x = direction.x * SPEED
			velocity.z = direction.z * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			velocity.z = move_toward(velocity.z, 0, SPEED)
