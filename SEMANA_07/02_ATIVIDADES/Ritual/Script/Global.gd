extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("HI")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var cont = 0
func contador():
	cont = cont + 1
	return cont
