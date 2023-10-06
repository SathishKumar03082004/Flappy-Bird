extends CanvasLayer

signal start_game

var game_started=false

func _input(event):
	if event.is_action_pressed("flap") && !game_started:
		emit_signal("start_game")
		game_started=true
