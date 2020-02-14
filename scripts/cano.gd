extends Node2D

export var vel = -400

var cena

func _ready():
	cena = get_tree().get_current_scene()
	set_process(true)

func _process(delta):
	if cena.estado == cena.JOGANDO:
		position += Vector2(vel * delta, 0)
	 
	if position.x < -100: # se o cano sair da tela...
		queue_free() # destroi ele

func _on_Area2D_body_entered(body):
	if body.get_name() == "Felpudo":
		cena.kill()

func _on_Ponto_body_entered(body):
	cena.pontuar()
