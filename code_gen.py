from params import *
from supp import *
from func import *


# ALL PRINTING PROCEDURES SHOULD START WITH INIT COMMAND AND END WITH CLOSE COMMAND

# 3D half sphere
if 1:
    init(0, 10)
    archim_3d(5, circle, [5])
    close("half_shpere", 5, -8, 5, Tn = 0, s = 1)

# 3D elipsoid
if 1:
    init(0, 10)
    archim_3d(2, elipsoid, [7, 2])
    close("elipsoid", 5, -8, 5, Tn = 0, s = 1)

# Staircase film with parallel orientation
if 1:
    init(0, 2, Tn = 90)
    for i in range(10):
        film(20 - 2 * i, 4, 0.16)
    set_abs(z = 0)
    close("staircase", 25, -2, 0, s = 1, Tn = 90)

# Film with parallel orientation
if 1:
    init(0, 20)
    film(30, 5, 3)
    close("parallel", 0, -20, 20, s = 1)

# Single concentric circles layer
if 1:
    init(-20, 15)
    conc(10)
    close("concentric", 0, -5, 5, s = 1)

# 4 layers of archimedes spiral
if 1:
    init(-20, 10)
    archim(15)
    rise()
    move()
    archim(15, alpha = 0.5)
    rise()
    move()
    archim(15)
    rise()
    move()
    archim(15, alpha = 0.5)
    close("archimedes", 5, -8, 5, Tn = 0, s = 1)

# 4 radial films with varying number of layers
if 1:
    init(0, 10)
    radial(15)

    move(x = 20)
    radial(15)
    rise()
    radial(15)

    move(y = 20, z = -dz)
    radial(15)
    rise()
    radial(15)
    rise()
    radial(15)

    move(x = -20, z = -2 * dz)
    radial(15)
    rise()
    radial(15)
    rise()
    radial(15)
    rise()
    radial(15)

    close("radial_quad", 0, 10, 20, s = 1)

# Radinoid
if 1:
    init(0, 20)
    archim(20)
    rise()
    radial(20)
    close("radinoid", 0, -20, 20, s = 1)

# Test from 27th of Feb 2020; checking double layered combinations of circular films
if 1:
    filename_test_1 = "test_20_02_27"
    init(0, -15)
    conc(20)
    rise()
    conc(20)

    move(x = 30)
    archim(20)
    rise()
    move()
    archim(20)

    move(y = 30)
    radial(20)
    rise()
    radial(20)

    move(x = -30)
    archim(20)
    rise()
    radial(20)
    close("test_20_02_27", -20, 0, 20, s = 1)
