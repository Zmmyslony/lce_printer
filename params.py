import math
import os
import numpy as np

# Nozzle parameters:
ext = 0.002     # Extrusion multiplier per mm
v = 20          # Moving speed when priting
vf = 1000       # Moving speed when not printing
dxy = 0.32      # Thickness of the line
dz = 0.16       # Height of the layer


# Theoretical nozzle parameters:
res = 0.04 # movement resolution
# Birmingham gauge needle diameters:
d19, d20, d21, d22, d22s, d23, d24, d25, d26, d26s, d27, d28, d29 = 0.686, 0.603, 0.514, 0.413, 0.152, 0.337, 0.311, 0.260, 0.260, 0.127, 0.210, 0.184, 0.184
dn = d23
ds = 28.5
fr = 25         # flow rate
v_rate = 352.5  # parameter relating speed to nozzle diameter




t_ext = fr * (dxy * dz) * 4 / (math.pi * ds ** 2) # extrusion multiplier assuming rectangular scrossection of the output and cylindrical shape of the syringe
t_v = int(dn ** 2 * v_rate)
t_dxy = res * int(dn / res)         # projecting nozzle diameter on printer resolution
t_dz = res * int(dn / (2 * res))    # projecting nozzle radius on printer resolution

print(t_ext, t_v, t_dxy, t_dz)
