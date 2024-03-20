extends CharacterBody3D

# väikseim võimalik kiirus meetrit sekundis
@export var min_kiirus = 10
# suurim võimalik kiirus meetrit sekundis
@export var max_kiirus = 18

# seda funktsiooni aktiveerime hiljem
func initialize(algus_pos, mangija_pos):
	# kera läheb alguspos-i ja pöörab ennast mängija poole
	look_at_from_position(algus_pos, mangija_pos, Vector3.UP)
	# kera keerab ennast suvaliselt 45-kraadi raadiuses (pii on 180 kraadi)
	rotate_y(randf_range(-PI / 4, PI / 4))

	var suvaline_kiirus = randi_range(min_kiirus, max_kiirus)
	# kera liigub edasi suvalsie kiirusega
	velocity = Vector3.FORWARD * suvaline_kiirus
	# keerame kera liikumisvektorit sõltuvalt sellest, kuhu poole ta vaatab
	velocity = velocity.rotated(Vector3.UP, rotation.y)

func _physics_process(_delta):
	move_and_slide()
