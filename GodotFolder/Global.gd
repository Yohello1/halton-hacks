extends Node

var checkpoint = 0
var list_of_nodes = {
	"0" : [0,0],
	"1" : [1540,120],
	"2" : [100, 50]
}

var jump_limit = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Checkpoint:", checkpoint )
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("Checkpoint:", checkpoint )
	pass
