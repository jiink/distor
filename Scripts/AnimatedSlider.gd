extends HSlider

var handleFrames = [
	preload("res://Assets/capybara/capybara-walk10.png"),
	preload("res://Assets/capybara/capybara-walk9.png"),
	preload("res://Assets/capybara/capybara-walk8.png"),
	preload("res://Assets/capybara/capybara-walk7.png"),
	preload("res://Assets/capybara/capybara-walk6.png"),
	preload("res://Assets/capybara/capybara-walk5.png"),
	preload("res://Assets/capybara/capybara-walk4.png"),
	preload("res://Assets/capybara/capybara-walk3.png"),
	preload("res://Assets/capybara/capybara-walk2.png"),
	preload("res://Assets/capybara/capybara-walk1.png"),
	]

func _on_YSlider_value_changed(value):
	# the frame the handle shows is a function of the value
	var frame = int(value * 100) % (handleFrames.size())
	print("frame is %d" % [frame])
	add_icon_override("grabber_highlight", handleFrames[frame])
