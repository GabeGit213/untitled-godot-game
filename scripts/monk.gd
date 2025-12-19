extends CharacterBody2D

@export var dialogue_text = "Greetings, young ninja."

var player_in_range = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_range = true
	

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_range = false
		
func _process(_delta):
	if player_in_range and Input.is_action_just_pressed("interact"):
		DialogueManager.show_dialogue(dialogue_text)
