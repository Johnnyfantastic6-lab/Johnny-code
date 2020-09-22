extends Node

func instance_scene(scene, position, rotation_degrees, customValues):
	var instance = scene.instance()

	instance.position = position
	instance.rotation_degrees = rotation_degrees

	if customValues != null:
		instance.start(customValues)

	get_tree().get_root().call_deferred("add_child", instance)
