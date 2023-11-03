extends CharacterBody2D


func _ready():
	$Animaciones.play("Prueba")#Al iniciar la app se ejecuta la animacion
	
func _physics_process(delta):
	var direccion = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = direccion * 200
	
	# Verificar si no hay entradas del teclado o del mouse
	var no_input = true
	if Input.is_action_pressed("ui_up"):
		no_input = false
	if Input.is_action_pressed("ui_down"):
		no_input = false
	if Input.is_action_pressed("ui_left"):
		no_input = false
	if Input.is_action_pressed("ui_right"):
		no_input = false
	if no_input:
		# Detener la animación
		$Animaciones.stop()
	else:
		# Reproducir la animación
		$Animaciones.play("Prueba")
	move_and_slide()
	
