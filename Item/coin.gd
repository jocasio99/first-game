extends Area2D

@onready var coin_sfx: AudioStreamPlayer2D = $coin_sfx
var touch = false

# This function is called when the player enters the collision area
#func _on_Area2D_body_entered(body):
func _process(delta: float) -> void:
	print("Coin collected by:", body)
	if has_overlapping_areas():
		queue_free()  # Remove the coin after playing the sound
		coin_sfx.play()  # Play the sound effect
		



#if has_overlapping_bodies():
		#coin_sfx.play()
		#await coin.finished
		#queue_free()
