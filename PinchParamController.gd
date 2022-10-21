extends VBoxContainer

var mainController
var textureRect

func _ready():
	mainController = get_tree().get_current_scene()
	textureRect = mainController.textureRect


func _on_XSlider_value_changed(new_x_pos):
	var tr = mainController.get_node(textureRect) as TextureRect
	tr.material.set_shader_param("bulge_x_pos", new_x_pos)


func _on_YSlider_value_changed(new_y_pos):
	var tr = mainController.get_node(textureRect) as TextureRect
	tr.material.set_shader_param("bulge_y_pos", new_y_pos)


func _on_SSlider_value_changed(new_strength):
	var tr = mainController.get_node(textureRect) as TextureRect
	tr.material.set_shader_param("pinch_strength", new_strength)
