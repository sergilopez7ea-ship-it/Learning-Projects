extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_2_body_entered(body) -> void:

	get_parent().get_node("Pelota").get_node("CharacterBody2D").position = Vector2(0,0)
	get_parent().get_node("Rojo").get_node("Jugador1").position = Vector2(0,0)
	get_parent().get_node("Node2D").get_node("Jugador1").position = Vector2(0,0)

func _on_area_2d_body_entered(body) -> void:
	
	get_parent().get_node("Pelota").get_node("CharacterBody2D").position = Vector2(0,0)
	get_parent().get_node("Rojo").get_node("Jugador1").position = Vector2(0,0)
	get_parent().get_node("Node2D").get_node("Jugador1").position = Vector2(0,0)
