extends Node2D

func _on_Area2D_area_entered(area):
	$AudioStreamPlayer.play()
	$Sprite.visible = false
	$Particles2D.emitting = true
	$Timer.start()


func _on_Timer_timeout():
	queue_free()
