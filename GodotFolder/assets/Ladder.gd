extends Area2D

var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	$"WhiteBlock-sheet".visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if counter != 0:
		Global.jump_limit = 100000
		$"WhiteBlock-sheet".visible = true
	counter += 1

func _on_body_exited(body):
	Global.jump_limit = 3
	$"WhiteBlock-sheet".visible = false
