extends CharacterBody2D

# Speed of the enemy
@export var speed = 9000

# Direction of movement
var direction = Vector2(1, 0)  # Initially moving right

# Reference to the Timer node
@onready var switch_timer = $SwitchTimer

func _process(delta):
	move_enemy(delta)

func move_enemy(delta):
	velocity = direction * speed * delta
	move_and_slide()


func _on_switch_timer_timeout():
	direction *= -1
	


func _on_fire_slime_area_entered(area):
	if area.is_in_group("Player"): 
		area.take_damage(10)
