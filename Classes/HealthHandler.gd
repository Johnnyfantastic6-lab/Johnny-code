extends Node

class_name HealthHandler

signal health_empty
signal health_increased(health,prevHealth)
signal health_decreased(health,prevHealth)
signal heath_full

export var maxHealth = 1
export var health = 1

func health_updater(newHealth):
	var prevHealth = health
	health = newHealth
	health = clamp(0, maxHealth, health)

	if health > prevHealth:
		emit_signal("health_increased", health, prevHealth)

	elif health < prevHealth:
		emit_signal("health_decreased", health, prevHealth)

	if health == 0:
		emit_signal("health_empty")

	elif health == maxHealth:
		emit_signal("heath_full")
