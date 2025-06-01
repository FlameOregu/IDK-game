extends CharacterBody2D

@export var speed = 100
var direction:Vector2

signal on_character_moving(is_moving:bool)
func _process(_delta):

	direction = Input.get_vector("left","right","up","down") 
	if !direction.is_zero_approx():
		on_character_moving.emit(true)
	elif direction.is_zero_approx():
		on_character_moving.emit(false)
	#print(direction)

func _physics_process(_delta):
	velocity = direction * speed
	move_and_slide()
