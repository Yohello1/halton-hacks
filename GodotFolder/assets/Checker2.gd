extends Area2D

var counter = 0



func _on_body_entered(body):
	if counter != 0:
		Global.checkpoint = self.name
	counter += 1

