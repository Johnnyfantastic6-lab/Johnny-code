extends Node

class_name CustomState

export var baseState = ""
var state = ""

func _on_state_changed(newState):
	state = newState

func _state_logic():
	pass
