import math
import os
import numpy as np

# Nozzle parameters:
ext = 0.002     # Extrusion multiplier per mm
v = 40          # Moving speed when priting
vf = 1000       # Moving speed when not printing
dxy = 0.32      # Thickness of the line
dr = dxy / 4
dz = 0.16       # Height of the layer

# Theoretical nozzle parameters:
res = 0.04 # movement resolution
# Birmingham gauge needle diameters:
d19, d20, d21, d22, d22s, d23, d24, d25, d26, d26s, d27, d28, d29 = 0.686, 0.603, 0.514, 0.413, 0.152, 0.337, 0.311, 0.260, 0.260, 0.127, 0.210, 0.184, 0.184
dn = d23
ds = 14.5

t_ext = (dn / ds) ** 2 / 2
t_v = int(dn ** 2 * 352)
t_dxy = res * int(dn / res)
t_dz = res * int(dn / (2 * res))
t_dr = t_dxy / 2
#print(t_ext, t_v, t_dxy, t_dz)
