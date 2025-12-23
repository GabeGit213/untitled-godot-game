extends CharacterBody2D

@onready var anim_player: AnimatedSprite2D = $AnimatedSprite2D
@onready var path: Path2D = $Path2D
@onready var path_follow: PathFollow2D = $Path2D/PathFollow2D
