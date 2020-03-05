import math, os, supp
import numpy as np
from numpy import sin, cos
from params import *

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
