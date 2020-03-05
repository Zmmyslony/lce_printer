import math, os, supp
import numpy as np
from numpy import sin, cos
from params import *

x_abs, y_abs, z_abs, l_tot = 0, 0, 0, 0

def clean(x, y):
    global x_abs, y_abs
    f = open(tfile, "a")
    f.write("G91 \n")                                       # switch to relative position mode
    f.write("G01 \tX20 \tF{} \t E{}\n".format(v, 20 * ext)) # clean the nozzle
    f.write("G01 \tZ1 \tF{}\n".format(vf))                  # move up
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x - 20, y, vf))  # move to the starting position
    f.write("G01 \tZ-1 \tF{}\n".format(vf))                 # lower to printing height
    f.write("G90 \n")
    f.close()
    x_abs += x
    y_abs += y

def init(x, y, Tn = 90, Tb = 0):                    # Initialization of the printing procedure. All printing processes should start with this function
    global x_abs, y_abs, z_abs, l_tot
    if not os.path.isdir("{}codes".format(dir)):    # make the code folder in the working directory
        os.mkdir("{}codes".format(dir))
    if os.path.isfile(tfile):                       # delete previous temp file
        os.remove(tfile)

    f = open(tfile, "w")
    f.write("(Initialization)\n")
    f.write("M104 \tS{}\n".format(Tn))              # set nozzle temperature to Tn
    f.write("M140 \tS{}\n".format(Tb))              # set bed temperature to Tb
    f.write("M109 \tS{}\n".format(Tn))              # wait until nozzle temperature reaches Tn
    f.write("M190 \tS{}\n".format(Tb))              # wait until bed temperature reaches Tb
    f.close()

    clean(x, y)
    x_abs, y_abs, z_abs, l_tot = 0, 0, 0, 0         # clear all previous values of parameters

    f = open(tfile, "a")
    f.write("G92 \tX0 \tY0 \tZ0\n")                 # set current position as (0, 0, 0) coordinate
    f.write("G90\n")                                # switch to absolute positon mode

def close(filename, x, y, z, Tn = 0, Tb = 0, s = 0):
    f = open(tfile, "a")

    efile = "{}codes/{}.gcode".format(dir, filename)

    f.write("\n(Closing)\n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tZ{:.2f} \tF{}\n".format(x_abs + x, y_abs + y, z_abs + z, vf)) # move to the finishing position
    f.write("M104 S{}\n".format(Tn))        # set nozzle temperature to Tn
    f.write("M140 S{}\n".format(Tb))        # set bed temperature to Tb
    f.close()

    if not s:                               # if s = 0 ask for confirmation
        accept = ""
        print("Total printing time will be around {:.1f} min. \nAccept? (y/n)".format(l_tot / v))
        accept = input()

    if s or accept == "y" or accept == "Y":
        print("{} generated.".format(filename))
        if os.path.isfile(efile):       # if this file already exists delete it
            os.remove(efile)
        os.rename(tfile, efile)         # rename the temporary file to the correct name
    else:
        print("Generating aborted.")

def wait(t, x, y):
    global x_abs, y_abs

    f = open(tfile, "a")
    f.write("\nG04 \tS{} \n".format(t))
    f.close()

    clean(x, y)

def rise(n = 1): # rise the nozzle by 1 layer
    global z_abs

    f = open(tfile, "a")
    f.write("\n(Raising by {} layers)\n".format(n))
    f.write("G90 \n")
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + n * dz, vf))
    f.close()

    z_abs += n * dz

def move(x = 0, y = 0, z = 0):  # move nozzle by (x, y, z)
    global x_abs, y_abs, z_abs

    f = open(tfile, "a")
    f.write("\n(Moving by {}, {}, {})\n".format(x, y, z))
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf)) # move 5 mm up to not move over anything that is printed
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs + x, y_abs + y, vf))  # move (x, y, 0)
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + z, vf)) # move z - 5 mm in z direction
    f.close()

    x_abs += x
    y_abs += y
    z_abs += z


def set_abs(x, y, z): # set the starting position of next shape to (x, y, z)
    global x_abs, y_abs, z_abs

    f = open(tfile, "a")
    f.write("\n(Setting position to {}, {}, {})\n".format(x, y, z))
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf))
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x, y, vf))
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z, vf))
    f.close()

    x_abs, y_abs, z_abs = x, y, z

def film(l, w, h): # print film with parallel orientation in x axis
    global x_abs, y_abs, z_abs, l_tot
    y0 = y_abs
    lin = int(math.ceil(w / (2 * dxy)))
    lay = int(math.ceil(h / dz))
    len = l * lay * lin * 2
    l_tot += len

    f = open(tfile, "a")
    f.write("\n(Printing film of dimensions {:.2f} x {:.2f} x {:.2f})\n".format(l, 2 * lin * dxy, lay * dz))
    f.write("G90 \n")
    f.write("M83 \n")

    for i in range(lay):
        for j in range(lin):
            f.write("G01 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_abs + l, v, l * ext))   # print line moving right
            y_abs += dxy
            f.write("G01 \tY{:.2f} \tF{}\n".format(y_abs, vf))                          # move up
            f.write("G01 \tX{:.2f} \tF{} \tE{:.5f} \n".format(x_abs, v, l * ext))       # print line moving left
            y_abs += dxy
            f.write("G01 \tY{:.2f} \tF{}\n".format(y_abs, vf))                          # move up

        f.write("\nG01 \tX{:.2f} \tF{}\n".format(x_abs - 2 * dxy, vf))                  # move to the left of the printing area
        z_abs += dz
        y_abs = y0 + (2 * ((z_abs / dz) % 2) - 1) * dxy / 2                             # move half a thickness of the line up or down depending on layer number
        f.write("G01 \tY{:.2f} \tZ{:.2f} \tF{}\n".format(y_abs, z_abs, vf))             # move a layer up and down to a starting y position
        f.write("G01 \tX{:.2f} \tF{}\n \n".format(x_abs, vf))                           # move to the starting x position

    f.close()
    return len

def conc(d):        # outdated function; archim is the better one; print concentric circles starting at (x_abs, y_abs, z_abs)
    global x_abs, y_abs, z_abs, l_tot

    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    len = math.pi * n ** 2
    l_tot += math.pi * n ** 2

    f = open(tfile, "a")
    f.write("\n(Printing concentric circles of diameter {:.2f})\n".format(2 * (n + 1) * dxy))
    f.write("G90 \n")
    f.write("M83 \n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs, y_abs, vf))

    for i in range(n + 1):
        r_temp = (i + 0.5) * dxy
        f.write("G01 \tX{:.2f} \tF{} \n".format(x_abs - r_temp, vf))
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_abs + r_temp, y_abs, v, math.pi * r_temp * ext, r_temp, 0))
        f.write("G02 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(x_abs - r_temp, y_abs, v, math.pi * r_temp * ext, -r_temp, 0))

    f.close()
    return len

def archim(d, slices = 4, alpha = 0):   # print archimedes spiral approximation starting at (x_abs, y_abs, z_abs)
    global x_abs, y_abs, z_abs, l_tot
    a = 2 * math.pi * alpha
    arcs = supp.arch(d, slices)
                                               # calculate archimedes spiral starting at (0, 0) coordinates by cutting each circle into
    rot = np.array([[cos(a), sin(a), 0, 0, 0], [-sin(a), cos(a), 0, 0, 0],
    [0, 0, cos(a), sin(a), 0], [0, 0, -sin(a), cos(a), 0], [0, 0, 0, 0, 1]])    # define rotation matrix to allow to start from any given angle
    for i in range(arcs.shape[0]):
        arcs[i] = np.matmul(rot, arcs[i])
    arcs +=  np.reshape(np.array([x_abs, y_abs, 0, 0, 0]), (1, 5))  # move archimedes spiral to starting position
    len = 2 * math.pi * np.sum(arcs[:, 4]) / slices
    l_tot += len

    f = open(tfile, "a")
    f.write("\n(Printing archimedes spiral of diameter {:.2f})\n".format(d))
    f.write("G90 \n")
    f.write("M83 \n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs + cos(a) * arcs[0, 4], y_abs + sin(a) * arcs[0, 4], vf)) # move to starting position

    for i in range(arcs.shape[0]):
        s = arcs[i]
        f.write("G03 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(s[0], s[1], v, ext * s[4] * 2 / slices * math.pi, s[2], s[3]))
    f.close()
    return len

def archim_3d(h, fnc, args, slices = 4, alpha = 0):     # print 3D archimedes spiral approximation starting at (x_abs, y_abs, z_abs)
    global x_abs, y_abs, z_abs, l_tot
    a = 2 * math.pi * alpha                             # calculate standard angle from normalized one
    arcs = supp.arch_3d(h, fnc, args, slices)           # calculate archimedes spiral starting at (0, 0) coordinates by cutting each circle into slices

    rot = np.array([[cos(alpha), sin(alpha), 0, 0, 0, 0], [-sin(a), cos(a), 0, 0, 0, 0], [0, 0, 1, 0, 0, 0],
    [0, 0, 0, cos(a), sin(a), 0], [0, 0, 0, -sin(alpha), cos(alpha), 0], [0, 0, 0, 0, 0, 1]])
    for i in range(arcs.shape[0]):
        arcs[i] = np.matmul(rot, arcs[i])
    arcs +=  np.reshape(np.array([x_abs, y_abs, 0, 0, 0, 0]), (1, 6))  # move archimedes spiral to starting position
    len = 2 * math.pi * np.sum(arcs[:, 4]) / slices
    l_tot += len

    f = open(tfile, "a")
    f.write("\n(Printing archimedes spiral of height {:.2f})\n".format(h))
    f.write("G90 \n")
    f.write("M83 \n")
    f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(x_abs + cos(a) * arcs[0, 5], y_abs + sin(a) * arcs[0, 5], vf))

    for i in range(arcs.shape[0]):
        s = arcs[i]
        f.write("G03 \tX{:.2f} \tY{:.2f} \tZ{:.2f} \tF{} \tE{:.5f} \tI{:.2f} \tJ{:.2f}\n".format(s[0], s[1], s[2], v, ext * s[5] * 2 / slices * math.pi, s[3], s[4]))
    f.close()
    return len

def radial(d):
    global x_abs, y_abs, z_abs, l_tot
    lines = supp.rad(d)
    lines += np.reshape(np.array([0, x_abs, y_abs, x_abs, y_abs]), (1, 5))
    len = np.sqrt((lines[:, 1] - lines[:, 3]) ** 2 + (lines[:, 2] - lines[:, 4]) ** 2)  # calculate the length of each of the lines
    l_tot += np.sum(len)                                                                # calculate total printing length

    f = open(tfile, "a")
    f.write("\n(Printing radial pattern of diameter {:.2f})\n".format(d))
    f.write("G90 \n")
    f.write("M83 \n")
    f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf))

    for i in range(lines.shape[0]):
        f.write("G01 \tX{:.2f} \tY{:.2f} \tF{}\n".format(lines[i, 1], lines[i, 2], vf))
        f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs, vf))
        f.write("G01 \tX{:.2f} \tY{:.2f} \tF{} \tE{:.5f}\n".format(lines[i, 3], lines[i, 4], v, len[i] * ext))
        f.write("G01 \tZ{:.2f} \tF{}\n".format(z_abs + 1, vf))
    f.close()
    return np.sum(len)
