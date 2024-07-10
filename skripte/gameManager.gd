extends Node

var mozeTP = 0
var score = 0
@onready var label_score = $labelScore


func addPoint():
	score += 25
	if score < 150:
		label_score.text = "Tvoj score: " + str(score) + "
Fali ti jos: " + str(150 - score)
	else:
		mozeTP = 1
		label_score.text = "Prodji!
score: " + str(score) + "/150"
