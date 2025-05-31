extends CharacterBody2D

@export var speed = 100
var direction:Vector2

func _process(_delta):
	direction = Input.get_vector("left","right","up","down") 

func _physics_process(_delta):
	velocity = direction * speed
	move_and_slide()
