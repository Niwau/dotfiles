import json
import socket
import time

# Lê a cor principal do Pywal
with open("/home/guilherme/.cache/wal/colors.json") as f:
    colors = json.load(f)

primary_color = colors["colors"]["color1"].lstrip("#")
r, g, b = tuple(int(primary_color[i:i+2], 16) for i in (0, 2, 4))

# Conecta ao servidor OpenRGB
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(("localhost", 6742))  # IP e porta padrão do OpenRGB

# Protocolo simples para definir cor (pode mudar dependendo da versão do OpenRGB SDK)
# É melhor usar a biblioteca pyOpenRGB se quiser mais robustez:
# pip install openrgb-python

from openrgb import OpenRGBClient
from openrgb.utils import RGBColor

orc = OpenRGBClient()
devices = orc.devices

for device in devices:
    device.set_color(RGBColor(r, g, b))
