extends CharacterBody3D

#Tegelase kirius
@export var kiirus = 14
#Gravitatsiooni kiirendus
@export var langus_kiirendus = 75

var siht_kiirus = Vector3.ZERO

func _physics_process(delta):
	#Nullvektor
	var suund = Vector3.ZERO

	#Erinevate liigutuste kontrollimine
	if Input.is_action_pressed("paremale"):
		suund.x += 1
	if Input.is_action_pressed("vasakule"):
		suund.x -= 1
	if Input.is_action_pressed("tagasi"):
		suund.z += 1
	if Input.is_action_pressed("edasi"):
		suund.z -= 1
	
	
	if suund != Vector3.ZERO:
		suund = suund.normalized()
		$Telg.basis = Basis.looking_at( 	suund);
		
	
	siht_kiirus.x = suund.x * kiirus
	siht_kiirus.z = suund.z * kiirus
	
	if not is_on_floor():
		siht_kiirus.y = siht_kiirus.y - (langus_kiirendus * delta)

	
	velocity = siht_kiirus
	move_and_slide()
	
