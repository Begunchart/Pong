extends Node2D

var player_score=0
var oponente_score=0

func _ready():
	_restart_game()

func _process(delta):
	$"Marcador Player".text = "Jugador: " + str(player_score)
	$"Marcador Player2".text= "Oponente: "+ str(oponente_score)

func _restart_game():
	$Ball.is_moving=false
	$Ball.direction=Vector2.ZERO
	$Ball.position= Vector2(960,540)
	#$Ball.reset_ball()
	$Timer.start()
	$"Oponente IA".position= Vector2(1860,460)
	$Jugador.position= Vector2(50,460)


func _on_Area_Izquierda_body_entered(body):
	if body is Ball:
		_restart_game()
		oponente_score+=1


func _on_Area_Derecha_body_entered(body):
	if body is Ball:
		_restart_game()
		player_score+=1
	
