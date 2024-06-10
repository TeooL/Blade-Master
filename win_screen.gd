extends Control

var score = 3
var displayed_score = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	var score_label = $Label2
	displayed_score = calc_score(score)
	score_label.text = "Your Score: " + str(displayed_score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_score(value):
	print("score set")
	score = value

func calc_score(score):
	if score == 1:
		return 1
	elif score > 1:
		return score + calc_score(score - 1)
		 
