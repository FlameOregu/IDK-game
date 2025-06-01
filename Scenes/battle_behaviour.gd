extends Node2D
var is_moving:bool = false
var exited:bool = false


func _on_battle_area_area_entered(area:Area2D):
	exited = false
	print("entered area")
	while exited == false:
		_battle_roller()
		await get_tree().create_timer(1.0).timeout

func _on_battle_area_area_exited(area:Area2D):
	exited = true

func character_is_moving(_is_moving:bool):
	is_moving = _is_moving	

func _battle_roller():
	if is_moving == true:
		if randi_range(1,6) == 6:
			print("Battle Commence")
