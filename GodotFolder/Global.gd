extends Node

var checkpoint = 0
var list_of_nodes = {
	"0" : [0,0],
	"1" : [1192,-224],
	"2" : [2662, -393]
}

var jump_limit = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Checkpoint:", checkpoint )
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("Checkpoint:", checkpoint )
	pass
