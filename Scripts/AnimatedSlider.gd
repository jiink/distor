extends HSlider

var handleFrames = [preload("res://Assets/smily_disabled.png"), preload("res://Assets/smily_other.png")]


#func _on_YSlider_value_changed(value):
#	# the frame the handle shows is a function of the value
#	var frame = int(value * 10) % (handleFrames.size())
#	print("frame is %d" % [frame])
#	add_icon_override("grabber_highlight", handleFrames[frame])
