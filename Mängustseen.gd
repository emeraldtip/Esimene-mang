extends Node3D

@export var kera: PackedScene




func _kell():
	
	var kera_koopia = kera.instantiate()

	var kera_algkoht = get_node("Path3D/PathFollow3D")
	# paneb kera suvalisele kohale rajal (randf annab väärtuse 1 ja 0 vahel, raja algus on 0 ja lõpp on 1)
	kera_algkoht.progress_ratio = randf()
	
	# määrab kera asukoha ja algsuuna
	var tegelase_koht = $Tegelane.position
	kera_koopia.initialize(kera_algkoht.position, tegelase_koht)

	# lisab kera stseeni
	add_child(kera_koopia)
