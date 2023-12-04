extends Node3D

# Called when the node enters the scene tree for the first time.
var score:int = 0
var lock:bool = false
#var new_node =preload("res://world.tscn")
func _ready():
	get_node("Label").text = "score change = "+str(score)
	
	lock = get_node("Button").button_pressed
	print("hello world on start lock "+str(lock))

#	add_child(instance) 
#	get_node("node")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var current:bool = get_node("Button").button_pressed
	if current != lock:
		lock = current
		updateScoreClick()

func updateScoreClick():
	print("hello world on update")
	score=score+1
	get_node("Label").text = "score change = "+str(score)
	print("click "+str(score))

