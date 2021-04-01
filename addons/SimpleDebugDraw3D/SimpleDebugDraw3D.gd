tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("SDD3D", "res://addons/SimpleDebugDraw3D/Scenes/SimpleDebugDraw3D.tscn")


func _exit_tree():
	remove_autoload_singleton("SDD3D")
