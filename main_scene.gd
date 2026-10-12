extends Node2D

@onready var superior = $Superior

var tiempo = 0.0
var posicion_inicial: Vector2

func _ready():
	posicion_inicial = superior.position

func _process(delta):
	tiempo += delta
	superior.position.y = posicion_inicial.y + sin(tiempo * 2.0) * 5.0
