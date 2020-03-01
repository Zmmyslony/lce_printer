import math
import os
import numpy as np
from functions import *

x_pos = 0
y_pos = 0
z_pos = 0
def init_abs(filename, x, y, T = 95):
    global x_pos, y_pos, z_pos
    x_pos, y_pos, z_pos = 0, 0, 0
    print("Generating {}...".format(filename))
    f = open(filename, "w")
    f.write("M104 S{}\n".format(T))
    f.write("M109 S{}\n".format(T))
    f.write("G91 \nG1 \tX20 \tF60 \nG1 \tZ5 \tF{}\nG1 \tX{:.2f} \tY{:.2f} \tF{}\nG1 \tZ-5 \tF{}\n \n".format(vf, x, y, vf, vf))
    f.write("G92 \tX0 \tY0 \tZ0 \nG90\n")

def close_abs(filename, x, y, z, T = 0):
    f = open(filename, "a")
    f.write("G1 \tX{:.2f} \tY{:.2f} \tZ{:.2f} \tF{}\n".format(x_pos + x, y_pos + y, z_pos + z, vf))
    f.write("M104 S{}\n".format(T))

def move_abs(filename, x = 0, y = 0, z = 0):
    global x_pos, y_pos, z_pos
    f = open(filename, "a")
    f.write("G1 \tZ{:.2f} \tF{}".format(z_pos + 5, vf))
    x_pos += x
    y_pos += y
    f.write("G1 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_pos, y_pos, vf))
    z_pos += z
    f.write("G1 \tZ{:.2f} \tF{}".format(z_pos, vf))

def set_pos_abs(filename, x = x_pos, y = y_pos ,z = z_pos):
    global x_pos, y_pos, z_pos
    x_pos, y_pos, z_pos = x, y, z

def film_abs(filename, l, w, d, s = 0):
    global x_pos, y_pos, z_pos
    lin = int(math.ceil(w / (2 * dxy)))
    lay = int(math.ceil(d / dz))
    if not s:
        accept = ""
        print("Dimensions of the film: {:.2f} x {:.2f} x {:.2f} mm \nPrinting time: {:.1f} min \n \nAccept? (y/n)".format(l, 2 * lin * dxy, lay * dz, l * lay * lin / v))
        accept = input()
    if s or accept == "y" or accept == "Y":
        f = open(filename, "a")
        f.write("G90 \n")
        for i in range(lay):
            for j in range(lin):
                f.write("G1 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_pos + l, v, l * ext))
                y_pos += dxy
                f.write("G1 \tY{:.2f} \tF{}\n".format(y_pos, vf))
                f.write("G1 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_pos, v, l * ext))
                y_pos += dxy
                f.write("G1 \tY{:.2f} \tF{}\n".format(y_pos, vf))
            f.write("\nG1 \tX{:.2f} \tF{}\n".format(x_pos - 2 * dxy, vf))
            z_pos += dz
            y_pos = 0
            f.write("G1 \tY{:.2f} \tZ{:.2f} \tF{}\n".format(y_pos, z_pos, vf))
            f.write("G1 \tX{:.2f} \tF{}\n \n".format(x_pos, vf))
    else:
        print("Generating aborted")
    return tot_len

def concentric_abs(filename, d, x_mid = 0, y_mid = 0, s = 0):
    global x_pos, y_pos, z_pos
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    tot_len = 0
    for i in range(n):
        tot_len += 2 * math.pi * (i + 0.5) * dxy
    if not s:
        accept = ""
        print("Diameter of the film: {} mm \nPrinting time: {:.1f} min \n \nAccept? (y/n)".format(2 * (n + 1) * dxy, tot_len / v))
        accept = input()
    if s or accept == "y" or accept == "Y":
        f = open(filename, "a")
        f.write("G90 \n")
        x_pos = x_mid - dxy / 2
        y_pos = y_mid
        f.write("G1 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_pos, y_pos, vf))
        for i in range(n + 1):
            f.write("G2 \tX{:.2f} \tY{:.2f} R{} \tE{:.5f} \tF{}\n".format(2 * x_mid - x_pos, y_pos, math.abs(x_mid - x_pos), math.pi * (i + 0.5) * dxy * ext, v))
            f.write("G2 \tX{:.2f} \tY{:.2f} R{} \tE{:.5f} \tF{}\n".format(x_pos, y_pos, math.abs(x_mid - x_pos), math.pi * (i + 0.5) * dxy * ext, v))
            x_pos -= dxy
            f.write("G1 \tX{:.2f} \tF{}\n".format(x_pos, vf))
    else:
        print("Generating aborted")
    return tot_len

def archim_abs(filename, d, s = 0):
    global x_pos, y_pos, zpos
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    tot_len = 0
    for i in range(n):
        tot_len += 2 * math.pi * (i + 0.5) * dxy
    if not s:
        accept = ""
        print("Diameter of the film: {} mm \nPrinting time: {:.1f} min \n \nAccept? (y/n)".format(2 * (n + 1) * dxy, tot_len / v))
        accept = input()
    if s or accept == "y" or accept == "Y":
        f = open(filename, "a")
        f.write("G90 \n")
        for i in range(n + 1):
            r_temp = (i + 0.5) * dxy
            x_pos += r_temp
            y_pos += r_temp
            f.write("G2 \tX{:.2f} \tY{:.2f} \tI{:.2f} \tJ{:.2f} \tE{:.5f} \tF{}\n".format(x_pos, y_pos, r_temp, 0, 0.5 * math.pi * r_temp * ext, v))
            r_temp += dr
            x_pos += r_temp
            y_pos -= r_temp
            f.write("G2 \tX{:.2f} \tY{:.2f} \tI{:.2f} \tJ{:.2f} \tE{:.5f} \tF{}\n".format(x_pos, y_pos, 0, -r_temp, 0.5 * math.pi * r_temp * ext, v))
            r_temp += dr
            x_pos -= r_temp
            y_pos -= r_temp
            f.write("G2 \tX{:.2f} \tY{:.2f} \tI{:.2f} \tJ{:.2f} \tE{:.5f} \tF{}\n".format(x_pos, y_pos, -r_temp, 0, 0.5 * math.pi * r_temp * ext, v))
            r_temp += dr
            x_pos -= r_temp
            y_pos += r_temp
            f.write("G2 \tX{:.2f} \tY{:.2f} \tI{:.2f} \tJ{:.2f} \tE{:.5f} \tF{}\n".format(x_pos, y_pos, 0, +r_temp, 0.5 * math.pi * r_temp * ext, v))

    else:
        print("Generating aborted")
    return tot_len

def radial_abs(filename, d, s = 0):
    global x_pos, y_pos, zpos
    # x_pos, y_pos = 0, 0
    tot_len = 0
    r = d / 2 - dxy / 2
    s = 2 * math.pi * r / dxy
    print("s = {}".format(s))
    n = math.floor(math.log(s, 2))
    lines = np.array([[0, x_pos + r, y_pos, x_pos, y_pos], [0.25, x_pos, y_pos + r, x_pos, y_pos],
     [0.5, x_pos - r, y_pos, x_pos, y_pos], [0.75, x_pos, y_pos - r, x_pos, y_pos]])
    for i in range(2, n + 1):
        a = 2 * math.pi / (2 ** i)
        r0 = dxy * (1 / 2 + 0.5 / math.sin(a / 2))
        print("i = {}, n = {}, a = {:.2f}, r0 = {:.2f}, l = {:.2f}".format(i, 2 ** i, a, r0, r - r0))
        for j in range(2 ** i):
            ap = a * (j + 0.5)
            temp = np.array([ap * 0.5 / math.pi, x_pos + math.cos(ap) * r, y_pos + math.sin(ap) * r, x_pos + math.cos(ap) * r0, y_pos + math.sin(ap) * r0])
            temp = np.reshape(temp, (1, 5))
            lines = np.append(lines, temp, axis = 0)
    lines = lines[lines[:,0].argsort()]
    len = np.sqrt((lines[:, 1] - lines[:, 3]) ** 2 + (lines[:, 2] - lines[:, 4]) ** 2)
    np.set_printoptions(precision = 3)
    tot_len = np.sum(len)
    if not s:
        accept = ""
        print("Diameter of the film: {} mm \nPrinting time: {:.1f} min \n \nAccept? (y/n)".format(d, tot_len / v))
        accept = input()
    if s or accept == "y" or accept == "Y":
        f = open(filename, "a")
        f.write("G90 \n")
        f.write("G1 \tZ{:.2f} \tF{}\n".format(z_pos + 2, vf))
        for i in range(lines.shape[0]):
            f.write("G1 \tX{:.2f} \tY{:.2f} \tF{}\n".format(lines[i, 1], lines[i, 2], vf))
            f.write("G1 \tZ{:.2f} \tF{}\n".format(z_pos, vf))
            f.write("G1 \tX{:.2f} \tY{:.2f} \tE{:.5f} \tF{}\n".format(lines[i, 3], lines[i, 4], len[i] * ext, v))
            f.write("G1 \tZ{:.2f} \tF{}\n".format(z_pos + 2, vf))
    else:
        print("Generating aborted")
    return tot_len

def raise_abs(filename, n = 1):
    global z_pos
    z_pos += n * dz
    f = open(filename, "a")
    f.write("G90 \n")
    f.write("\nG1 \tZ{:.2f} \tF{}\n \n".format(z_pos, vf))
