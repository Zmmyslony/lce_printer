from params import *
from func import *

if 1:
    filename_step = "film_step"
    init(0, 20)
    for i in range(10):
        film(20 - 2 * i, 4, 0.16)
    close(filename_step, 0, -20, 20, s = 1)

if 1:
    filename_film = "film"
    init(0, 20)
    film(30, 5, 0.16)
    close(filename_film, 0, -20, 20, s = 1)

if 1:
    filename_conc = "conc"
    init(-20, 15)
    concentric(10)
    close(filename_conc, 0, -5, 5, s = 1)

if 1:
    filename_arch= "archim"
    init(-20, 10)
    archim(15)
    rise()
    set_pos(x = 0, y = 0)
    archim(15)
    rise()
    set_pos(x = 0, y = 0)
    archim(15)
    rise()
    set_pos(x = 0, y = 0)
    archim(15)
    close(filename_arch, 5, -8, 5, T = 0, s = 1)

if 1:
    filename_rad = "rad"
    init(0, 10)
    radial(15)

    move(x = 50)
    radial(15)
    rise()
    radial(15)

    move(y = 50, z = -dz)
    radial(15)
    rise()
    radial(15)
    rise()
    radial(15)

    move(x = -50, z = -2 * dz)
    radial(15)
    rise()
    radial(15)
    rise()
    radial(15)
    rise()
    radial(15)

    close(filename_rad, 0, 10, 20, s = 1)

if 1:
    filename_rd_con = "radinoid"
    init(0, 20)
    archim(20)
    rise()
    set_pos(x = 0, y = 0)
    radial(20)
    close(filename_rd_con, 0, -20, 20, s = 1)

if 1:
    filename_test_1 = "test_20_02_27"
    init(0, 40)
    concentric(20)
    rise()
    set_pos(x = 0, y = 0)
    concentric(20)

    set_pos(x = 0, y = 0, z = 0)
    move(x = 50)
    archim(20)
    rise()
    set_pos(x = 50, y = 0)
    archim(20)

    set_pos(x = 50, y = 0, z = 0)
    move(y = 50)
    radial(20)
    rise()
    radial(20)

    set_pos(x = 50, y = 50, z = 0)
    move(x = -50)
    archim(20)
    rise()
    set_pos(x = 0, y = 50)
    radial(20)
    close(filename_test_1, -40, 0, 20, s = 1)
