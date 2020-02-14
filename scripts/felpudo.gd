extends RigidBody2D

var cena

func _ready():
	cena = get_tree().get_current_scene()
	set_process_input(true) # monitorará todos os comandos da tela

func _input(event):
	if event.is_action_pressed("touch"): # se for evento comando "touch"...
		on_touch()

func on_touch(): # movimentará o pássaro pra cima
	if cena.estado == cena.JOGANDO:
		apply_impulse(Vector2(0, 0), Vector2(0, -1000)) 
		get_node("SomVoa").play()