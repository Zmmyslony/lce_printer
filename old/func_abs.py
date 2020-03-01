import math
import os
import numpy as np
from params import *

x_pos = 0
y_pos = 0
z_pos = 0
l = 0

def init(filename, x, y, T = 95):
    global x_pos, y_pos, z_pos, l
    x_pos, y_pos, z_pos, l = 0, 0, 0, 0
    f = open("codes/temp.gcode", "w")
    f.write("(Initialization)\n")
    f.write("M104 \tS{}\n".format(T))             # set nozzle temperature to T
    f.write("M109 \tS{}\n".format(T))             # wait until nozzle temperature reaches T
    f.write("G91 \n")                             # switch to relative position mode
    f.write("G01 \tX20 \tF{} \t E{}\n".format(v, 20 * ext)) # clean the nozzle
    f.write("G01 \tZ5 \tF{}\n".format(vf))       # move up
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x, y, vf))  # move to the starting position
    f.write("G01 \tZ-5 \tF{}\n".format(vf))      # lower to printing height
    f.write("G92 \tX0 \tY0 \tZ0\n")             # set current position as (0, 0, 0) coordinate
    f.write("G90\n")                            # switch to absolute positon mode

def close(filename, x, y, z, T = 0, s = 0):
    f = open("codes/temp.gcode", "a")
    f.write("\n(Closing)\n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tZ{:.2f} \tF{}\n".format(x_pos + x, y_pos + y, z_pos + z, vf)) # move to the finishing position
    f.write("M104 S{}".format(T))     # set nozzle temperature to T
    if not s:
        accept = ""
        print("Total printing time will be around {:.1f} min. \nAccept? (y/n)".format(l / v))
        accept = input()
    if s or accept == "y" or accept == "Y":
        print("{} generated.".format(filename))
        os.rename("codes/temp.gcode", "codes/{}.gcode".format(filename))    # rename the script to correct name
    else:
        print("Generating aborted.")

def move(x = 0, y = 0, z = 0):  # move nozzle by (x, y, z)
    global x_pos, y_pos, z_pos
    f = open("codes/temp.gcode", "a")
    f.write("\n(Moving by {}, {}, {})\n".format(x, y, z))
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_pos + 5, vf)) # move 5 mm up to not move over anything that is printed
    x_pos += x
    y_pos += y
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_pos, y_pos, vf))  # move (x, y, 0)
    z_pos += z
    f.write("G01 \tZ{:.2f} \tF{}".format(z_pos, vf)) # move z - 5 mm in z direction

def set_pos(x = x_pos, y = y_pos, z = z_pos): # set the starting position of next shape to (x, y, z)
    global x_pos, y_pos, z_pos
    x_pos, y_pos, z_pos = x, y, z

def raise(n = 1):   # raise the nozzle by n layers
    global z_pos
    z_pos += n * dz
    f = open("codes/temp.gcode", "a")
    f.write("\n(Raising by {} layers)\n".format(n))
    f.write("G90 \n")
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_pos, vf))

def film(ls, w, d): # print film with parallel orientation in x axis
    global x_pos, y_pos, z_pos, l
    lin = int(math.ceil(w / (2 * dxy)))
    lay = int(math.ceil(d / dz))
    tot_len = ls * lay * lin
    l += tot_len
    f = open("codes/temp.gcode", "a")
    f.write("\n(Printing film of dimensions {:.2f} x {:.2f} x {:.2f})\n".format(l, 2 * lin * dxy, lay * dz))
    f.write("G90 \n")
    for i in range(lay):
        for j in range(lin):
            f.write("G01 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_pos + ls, v, ls * ext))
            y_pos += dxy
            f.write("G01 \tY{:.2f} \tF{}\n".format(y_pos, vf))
            f.write("G01 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_pos, v, ls * ext))
            y_pos += dxy
            f.write("G01 \tY{:.2f} \tF{}\n".format(y_pos, vf))
        f.write("\nG01 \tX{:.2f} \tF{}\n".format(x_pos - 2 * dxy, vf))
        z_pos += dz
        y_pos = 0
        f.write("G01 \tY{:.2f} \tZ{:.2f} \tF{}\n".format(y_pos, z_pos, vf))
        f.write("G01 \tX{:.2f} \tF{}\n \n".format(x_pos, vf))
    return tot_len

def concentric(d): # print concentric circles starting at (x_pos, y_pos, z_pos)
    global x_pos, y_pos, z_pos, l
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    tot_len = 0
    for i in range(n):
        tot_len += 2 * math.pi * (i + 0.5) * dxy
    l += tot_len
    f = open("codes/temp.gcode", "a")
    f.write("\n(Printing concentric circles of diameter {:.2f})\n".format(2 * (n + 1) * dxy))
    f.write("G90 \n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_pos, y_pos, vf))
    for i in range(n + 1):
        r_temp = (i + 0.5) * dxy
        f.write("G01 \tX{:.2f} \tF{} \n".format(x_pos - r_temp, vf))
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_pos + r_temp, y_pos, v, math.pi * r_temp * ext, r_temp, 0))
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_pos - r_temp, y_pos, v, math.pi * r_temp * ext, -r_temp, 0))
    return tot_len

def archim(d):   # print archimedes spiral approximation starting at (x_pos, y_pos, z_pos)
    global x_pos, y_pos, z_pos, l
    ext_qt = 0.5 * math.pi * ext
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    tot_len = 0
    for i in range(n):
        tot_len += 2 * math.pi * (i + 0.5) * dxy
    l += tot_len
    f = open("codes/temp.gcode", "a")
    f.write("\n(Printing archimedes spiral of diameter {:.2f})\n".format(2 * (n + 1) * dxy))
    f.write("G90 \n")
    for i in range(n + 1):
        # print 1st quater of the circle
        r_temp = (i + 0.5) * dxy
        x_pos += r_temp
        y_pos += r_temp
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_pos, y_pos, v, r_temp * ext_qt, +r_temp, 0))
        # print 2nd quater of the circle
        r_temp += dr
        x_pos += r_temp
        y_pos -= r_temp
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_pos, y_pos, v, r_temp * ext_qt, 0, -r_temp))
        # print 3rd quater of the circle
        r_temp += dr
        x_pos -= r_temp
        y_pos -= r_temp
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_pos, y_pos, v, r_temp * ext_qt, -r_temp, 0))
        # print 4th quater of the circle
        r_temp += dr
        x_pos -= r_temp
        y_pos += r_temp
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_pos, y_pos, v, r_temp * ext_qt, 0, +r_temp))
    return tot_len

def radial(d, s = 0):
    global x_pos, y_pos, z_pos, l
    tot_len = 0
    r = d / 2 - dxy / 2 # radius of the printed circle
    s = 2 * math.pi * r / dxy   # circumference of the circle
    n = math.floor(math.log(s, 2)) # 2 ** n lines will be used to print the circle

    # define first 4 lines of the circle. [angle, start_x, start_y, end_x, end_y]
    lines = np.array([[0, x_pos + r, y_pos, x_pos, y_pos], [0.25, x_pos, y_pos + r, x_pos, y_pos],
     [0.5, x_pos - r, y_pos, x_pos, y_pos], [0.75, x_pos, y_pos - r, x_pos, y_pos]])

    # calculate all the next lines
    for i in range(2, n + 1):
        a = 2 * math.pi / (2 ** i) # increment of angle
        r0 = dxy * (1 / 2 + 0.5 / math.sin(a / 2))
        for j in range(2 ** i):
            ap = a * (j + 0.5)  # angle of current line
            temp = np.array([ap * 0.5 / math.pi, x_pos + math.cos(ap) * r, y_pos + math.sin(ap) * r, x_pos + math.cos(ap) * r0, y_pos + math.sin(ap) * r0])
            temp = np.reshape(temp, (1, 5))
            lines = np.append(lines, temp, axis = 0)

    lines = lines[lines[:,0].argsort()] # sort by angle
    len = np.sqrt((lines[:, 1] - lines[:, 3]) ** 2 + (lines[:, 2] - lines[:, 4]) ** 2) # calculate the length of each of the lines
    tot_len = np.sum(len) # calculate total printing length
    l += tot_len

    f = open("codes/temp.gcode", "a")
    f.write("\n(Printing radial pattern of diameter {:.2f})\n".format(d))
    f.write("G90 \n")
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_pos + 2, vf))
    for i in range(lines.shape[0]):
        f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(lines[i, 1], lines[i, 2], vf))
        f.write("G01 \tZ{:.2f} \tF{}\n".format(z_pos, vf))
        f.write("G01 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f}\n".format(lines[i, 3], lines[i, 4], v, len[i] * ext))
        f.write("G01 \tZ{:.2f} \tF{}\n".format(z_pos + 2, vf))
    return tot_len
