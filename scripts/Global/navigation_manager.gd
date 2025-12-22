extends Node

const scene_world = preload("res://scenes/world.tscn")
const scene_house = preload("res://scenes/house.tscn")

signal on_trigger_player_spawn

var spawn_door_tag

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"world":
			scene_to_load = scene_world
		"house":
			scene_to_load = scene_house
			
	if scene_to_load != null:
		spawn_door_tag = destination_tag
		get_tree().call_deferred("change_scene_to_packed", scene_to_load)
		
func trigger_player_spawn(position: Vector2, direction: String):
	on_trigger_player_spawn.emit(position, direction)
