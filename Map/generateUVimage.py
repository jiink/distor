from PIL import Image

im = Image.new('RGB', (256, 256), 0)
pixels = im.load()

for v in range(256):
    for u in range(256):
        pixels[u, v] = (u, v, 0)

im.save("UV.png")
