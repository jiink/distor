
# HOW TO USE:

Right click the drop down on `texture` in the inspector and create a new ImageTexture

`export var texture :ImageTexture`

Click the dropdown again and hit "copy", then find the node you want to connect to the webcam paste into that texture

# BIG IMPORTANT NOTES:
- This will only work on HTML5 exports. I'm using a lot of JS hackery. Maybe one day desktop will be viable.
- This is fairly brute force, copying images from the browser to Godot via Base64
    - That means it's slow, don't try to increase the resolution too much. Unless you just need pictures, not video.
    - Maybe OneDay I'll figure out how to feed a video stream directly into Godot, but today isn't that day.

# Documentation

Go read `html5webcam.gd`. The parts you likely care about are heavily commented.

# Live Demos

[Itch.io Page](https://greenf0x.itch.io/godot-html5-webcam)

[GitLab Repo](https://gitlab.com/greenfox/godot-html5-webcam)