extends Node

class_name StateMachine

signal state_changed(state)

var state = ""

func _ready():
	for i in get_child_count():
		connect("state_changed",get_child(i),"_on_state_changed")

func change_state(newState):
	if !state == newState:
		emit_signal("state_changed", state)

	state = newState
