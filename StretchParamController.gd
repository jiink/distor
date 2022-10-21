extends VBoxContainer

var mainController
var textureRect

func _ready():
	mainController = get_tree().get_current_scene()
	textureRect = mainController.textureRect


func _on_PSlider_value_changed(new_pos):
	var tr = mainController.get_node(textureRect) as TextureRect
	tr.material.set_shader_param("stretch_pos", new_pos)
