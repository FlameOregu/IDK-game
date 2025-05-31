extends Node2D


func _on_battle_area_area_entered(area:Area2D):
	print("entered area")
	_battle_roller()

func _on_battle_area_area_exited(area:Area2D):
	print("exit area")

func _battle_roller():
	# battle roller logic
	pass
