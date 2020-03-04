import math
import os
import numpy as np
from params import *
import supp

x_abs = 0
y_abs = 0
z_abs = 0
l_tot = 0

# If working on Windows set working directory here. Finish the directory path with "/".
# If working on Linux changing is not necessary. The files will be saved in the folder
# where the scripts are.
dir = ""


tfile = "{}codes/temp.gcode".format(dir)

def init(x, y, Tn = 90, Tb = 0):                     # Initialization of the printing procedure. All printing processes should start with this function
    if not os.path.isdir("{}codes".format(dir)):    # make the codes folder in the working directory
        os.mkdir("{}codes".format(dir))
    if os.path.isfile(tfile):                       # delete previous temp file
        os.remove(tfile)
    global x_abs, y_abs, z_abs, l_tot
    x_abs, y_abs, z_abs, l_tot= 0, 0, 0, 0
    f = open(tfile, "w")
    f.write("(Initialization)\n")
    f.write("M104 \tS{}\n".format(Tn))             # set nozzle temperature to Tn
    f.write("M140 \tS{}\n".format(Tb))            # set bed temperature to Tb
    f.write("M109 \tS{}\n".format(Tn))             # wait until nozzle temperature reaches Tn
    f.write("M190 \tS{}\n".format(Tb))            # wait until bed temperature reaches Tb
    f.write("G91 \n")                             # switch to relative position mode
    f.write("G01 \tX20 \tF{} \t E{}\n".format(v, 20 * ext)) # clean the nozzle
    f.write("G01 \tZ1 \tF{}\n".format(vf))          # move up
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x - 20, y, vf))  # move to the starting position
    f.write("G01 \tZ-1 \tF{}\n".format(vf))         # lower to printing height
    f.write("G92 \tX0 \tY0 \tZ0\n")                 # set current position as (0, 0, 0) coordinate
    f.write("G90\n")                                # switch to absolute positon mode

def close(filename, x, y, z, Tn = 0, Tb = 0, s = 0):
    f = open(tfile, "a")
    efile = "{}codes/{}.gcode".format(dir, filename)
    f.write("\n(Closing)\n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tZ{:.2f} \tF{}\n".format(x_abs + x, y_abs + y, z_abs + z, vf)) # move to the finishing position
    f.write("M104 S{}".format(Tn))     # set nozzle temperature to Tn
    f.write("M104 S{}".format(Tb))    # set bed temperature to Tb
    if not s:
        accept = ""
        print("Total printing time will be around {:.1f} min. \nAccept? (y/n)".format(l / v))
        accept = input()
    if s or accept == "y" or accept == "Y":
        print("{} generated.".format(filename))
        f.close()
        if os.path.isfile(efile):
            os.remove(efile)
        os.rename(tfile, efile)    # rename the script to correct name
    else:
        print("Generating aborted.")

def rise(n = 1): # rise the nozzle by 1 layer
    global z_abs
    z_abs += n * dz
    f = open(tfile, "a")
    f.write("\n(Raising by {} layers)\n".format(n))
    f.write("G90 \n")
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs, vf))

def move(x = 0, y = 0, z = 0):  # move nozzle by (x, y, z)
    global x_abs, y_abs, z_abs
    f = open(tfile, "a")
    f.write("\n(Moving by {}, {}, {})\n".format(x, y, z))
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf)) # move 5 mm up to not move over anything that is printed
    x_abs += x
    y_abs += y
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs, y_abs, vf))  # move (x, y, 0)
    z_abs += z
    f.write("G01 \tZ{:.2f} \tF{}".format(z_abs, vf)) # move z - 5 mm in z direction

def set_abs(x = x_abs, y = y_abs, z = z_abs): # set the starting position of next shape to (x, y, z)
    global x_abs, y_abs, z_abs
    f = open(tfile, "a")
    f.write("\n(Setting position to {}, {}, {})\n".format(x, y, z))
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf))
    x_abs, y_abs, z_abs = x, y, z
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs, y_abs, vf))
    f.write("G01 \tZ{:.2f} \tF{}".format(z_abs, vf))

def film(l, w, d): # print film with parallel orientation in x axis
    global x_abs, y_abs, z_abs, l_tot
    y0 = y_abs
    lin = int(math.ceil(w / (2 * dxy)))
    lay = int(math.ceil(d / dz))
    len = l * lay * lin * 2
    l_tot += len
    f = open(tfile, "a")
    f.write("\n(Printing film of dimensions {:.2f} x {:.2f} x {:.2f})\n".format(l, 2 * lin * dxy, lay * dz))
    f.write("G90 \n")
    for i in range(lay):
        for j in range(lin):
            f.write("G01 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_abs + l, v, l * ext))
            y_abs += dxy
            f.write("G01 \tY{:.2f} \tF{}\n".format(y_abs, vf))
            f.write("G01 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_abs, v, l * ext))
            y_abs += dxy
            f.write("G01 \tY{:.2f} \tF{}\n".format(y_abs, vf))
        f.write("\nG01 \tX{:.2f} \tF{}\n".format(x_abs - 2 * dxy, vf))
        z_abs += dz
        y_abs = y0 + (2 * ((z_abs / dz) % 2) - 1) * dxy / 2
        f.write("G01 \tY{:.2f} \tZ{:.2f} \tF{}\n".format(y_abs, z_abs, vf))
        f.write("G01 \tX{:.2f} \tF{}\n \n".format(x_abs, vf))
    return len

def conc(d): # print concentric circles starting at (x_abs, y_abs, z_abs)
    global x_abs, y_abs, z_abs, l_tot
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    len = 0
    for i in range(n):
        len += 2 * math.pi * (i + 0.5) * dxy
    l_tot += len
    f = open(tfile, "a")
    f.write("\n(Printing concentric circles of diameter {:.2f})\n".format(2 * (n + 1) * dxy))
    f.write("G90 \n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs, y_abs, vf))
    for i in range(n + 1):
        r_temp = (i + 0.5) * dxy
        f.write("G01 \tX{:.2f} \tF{} \n".format(x_abs - r_temp, vf))
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_abs + r_temp, y_abs, v, math.pi * r_temp * ext, r_temp, 0))
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_abs - r_temp, y_abs, v, math.pi * r_temp * ext, -r_temp, 0))
    return len

def archim(d, slices = 4, alpha = 0):   # print archimedes spiral approximation starting at (x_abs, y_abs, z_abs)
    global x_abs, y_abs, z_abs, l_tot
    alpha = 2 * math.pi * alpha
    f = open(tfile, "a")
    arcs = supp.arch(d, slices)    # calculate archimedes spiral starting at (0, 0) coordinates by cutting each circle into
    rot = np.array([[np.cos(alpha), np.sin(alpha), 0, 0, 0], [-np.sin(alpha), np.cos(alpha), 0, 0, 0],
    [0, 0, np.cos(alpha), np.sin(alpha), 0], [0, 0, -np.sin(alpha), np.cos(alpha), 0], [0, 0, 0, 0, 1]])
    for i in range(arcs.shape[0]):
        arcs[i] = np.matmul(rot, arcs[i])
    arcs +=  np.reshape(np.array([x_abs, y_abs, 0, 0, 0]), (1, 5))  # move archimedes spiral to starting position

    f.write("\n(Printing archimedes spiral of diameter {:.2f})\n".format(d))
    f.write("G90 \n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs + np.cos(alpha) * 0.5 * dxy, y_abs + np.sin(alpha) * 0.5 * dxy, vf))
    for i in range(arcs.shape[0]):
        s = arcs[i]
        f.write("G03 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(s[0], s[1], v, s[4] * 2 / slices * math.pi, s[2], s[3]))
    return len

def archim_3d(h, fnc, args, slices = 4, alpha = 0):   # print archimedes spiral approximation starting at (x_abs, y_abs, z_abs)
    global x_abs, y_abs, z_abs, l_tot
    alpha = 2 * math.pi * alpha
    f = open(tfile, "a")
    arcs = supp.arch_3d(h, fnc, args, slices)    # calculate archimedes spiral starting at (0, 0) coordinates by cutting each circle into
    rot = np.array([[np.cos(alpha), np.sin(alpha), 0, 0, 0, 0], [-np.sin(alpha), np.cos(alpha), 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 0] , [0, 0, 0, np.cos(alpha), np.sin(alpha), 0],
    [0, 0, 0, -np.sin(alpha), np.cos(alpha), 0], [0, 0, 0, 0, 0, 1]])
    for i in range(arcs.shape[0]):
        arcs[i] = np.matmul(rot, arcs[i])
    arcs +=  np.reshape(np.array([x_abs, y_abs, 0, 0, 0, 0]), (1, 6))  # move archimedes spiral to starting position

    f.write("\n(Printing archimedes spiral of height {:.2f})\n".format(h))
    f.write("G90 \n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs + np.cos(alpha) * arcs[0, 5], y_abs + np.sin(alpha) * arcs[0, 5], vf))
    for i in range(arcs.shape[0]):
        s = arcs[i]
        f.write("G03 \tX{:.2f} \tY{:.2f} \tZ{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(s[0], s[1], s[2], v, s[5] * 2 / slices * math.pi, s[3], s[4]))
    return len

def radial(d):
    global x_abs, y_abs, z_abs, l_tot
    lines = supp.rad(d)
    lines += np.reshape(np.array([0, x_abs, y_abs, x_abs, y_abs]), (1, 5))
    len = np.sqrt((lines[:, 1] - lines[:, 3]) ** 2 + (lines[:, 2] - lines[:, 4]) ** 2) # calculate the length of each of the lines
    l_tot += np.sum(len) # calculate total printing length

    f = open(tfile, "a")
    f.write("\n(Printing radial pattern of diameter {:.2f})\n".format(d))
    f.write("G90 \n")
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf))
    for i in range(lines.shape[0]):
        f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(lines[i, 1], lines[i, 2], vf))
        f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs, vf))
        f.write("G01 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f}\n".format(lines[i, 3], lines[i, 4], v, len[i] * ext))
        f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf))
    return np.sum(len)
