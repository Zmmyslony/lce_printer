from prints import *
import shapes

# ALL PRINTING PROCEDURES SHOULD START WITH INIT AND END WITH CLOSE FUNCTION



# 3D half sphere
if 1:
    init(10, 10, Tn = 105)
    archim_3d(7, shapes.circle, [7])
    close("half_shpere", -10, 30, 50, Tn = 0, s = 1)

# 3D elipsoid
if 1:
    init(8, 10)
    archim_3d(7, shapes.elipsoid, [5, 7])
    close("elipsoid", -8, 10, 7, Tn = 0, s = 1)

# Staircase film with parallel orientation
if 1:
    init(0, 2, Tn = 90)
    n = 8
    for i in range(n):
        film((n - i)* 2, 4, 0.16)
    set_abs(0, 0, 0)
    close("staircase", 25, -2, 50, s = 1, Tn = 105)

# Film with parallel orientation
if 1:
    init(0, 5, Tn = 90)
    film(40, 5, 0.3)
    close("parallel", 0, -5, 20, s = 1)

# Single concentric circles layer
if 1:
    init(-20, 15)
    conc(10)
    close("concentric", 0, -5, 5, s = 1)

# 4 layers of archimedes spiral
if 1:
    init(5, 8, Tn = 105)
    archim(10)
    rise()
    move()
    archim(10, alpha = 0.5)
    # rise()
    # move()
    # archim(15)
    # rise()
    # move()
    # archim(15, alpha = 0.5)
    close("archimedes", -5, 8, 4.84, Tn = 105, s = 1)

# 4 radial films with varying number of layers
if 1:
    init(30, 15, Tn = 90)
    radial(15, v = 30)

    move(x = -20)
    archim(15, v = 60)
    close("radial_archi", 0, 10, 20, s = 1)

if 1:
    init(25, 10, Tn = 90)
    archim(15, v = 30, alpha = 0.5)

    move(x = -17)
    archim(15, v = 40, alpha = 0.75)

    move(y = 17)
    archim(15, v = 50)
    close("archi_speed_30_40_50", 17, 0, 20, s = 1)

if 1:
    init(8, 10, Tn = 90)
    radial(15, v = 40)

    move(y = 17)
    radial(15, v = 50)

    move(x = 17)
    radial(15, v = 60)

    move(x = 17)
    radial(15, v = 80)
    close("rad_speed_40_50_60_80", 0, 10, 20, s = 1)
# Radinoid
if 1:
    init(10, 10, Tn = 90)
    archim(15)
    rise()
    radial(15)
    close("radinoid", -10, 10, 20, s = 1)

# Test from 27th of Feb 2020; checking double layered combinations of circular films
if 1:
    filename_test_1 = "test_20_02_27"
    init(0, -1, Tn = 105)
    # conc(20)
    # rise()
    # conc(20)

    set_abs(30, 0, 0)
    archim(20)
    rise()
    move()
    archim(20)

    set_abs(30, 30, 0)
    rise()
    radial(20)

    set_abs(0, 30, 0)
    archim(20)
    rise()
    radial(20)
    close("test_20_02_27", -20, 0, 20, s = 1, Tn = 0)

# Ji's code with waiting
if 1:
    init(0, 5, Tn = 0, Tb = 85)
    for i in range(5):
        film(20, 5, 2)
        set_abs(0, 10 * i + 7, 0)
        wait(7200, 0, 3)
    close("Ji", 0, 10, 10, Tb = 85, s = 1)
