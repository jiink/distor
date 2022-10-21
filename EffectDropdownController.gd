extends HBoxContainer

enum { PINCH, STRETCH }
var shaderTable = ["res://Shaders/new_shader.tres",
					"res://Shaders/stretch.gdshader"]

var mainController
var textureRect
onready var effectParams = get_node("../EffectParams")

func _ready():
	mainController = get_tree().get_current_scene()
	textureRect = mainController.get_node(mainController.textureRect)


# The user selects an effect from the dropdown.
# When an effect is selected, a signal is sent here.
# The selected effect is read, and the shader of the webcam's material is
# replaced accordingly. Then, all visible EffectParam sets will be invisibled,
# then the correct one becomes visible.
func _on_OptionButton_item_selected(index):
	# Give the webcam texture's material the new shader
	textureRect.material.set_shader(load(shaderTable[index]))
	
	# Make all of the parameters invsibile
	for c in effectParams.get_children():
		c.visible = false
	
	# Make the correct one visible
	effectParams.get_child(index).visible = true

	
