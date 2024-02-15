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
