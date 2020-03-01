import math
import os
import numpy as np
from params import *

def init_rel(filename, x, y):
    f = open(filename, "w")
    f.write("G91 \nG1 \tX20 \tF40 \nG1 \tZ5 \tF{} \nG1 \tX{:.2f} \tY{:.2f} \tF{}\nG1 \tZ-5 \tF{}\n \n".format(vf, x, y, vf, vf))

def close_rel(filename, x, y, z):
    f = open(filename, "a")
    f.write("G1 \tX{:.2f} \tY{:.2f} \tZ{:.2f} \tF{}\n".format(x, y, z, vf))

def raise_rel(filename, n = 1):
    f = open(filename, "a")
    f.write("G91 \n")
    f.write("\nG1 \tZ{:.2f} \n \n".format(vf, dz * n))

def film_rel(filename, l, w, d):
    lin = int(math.ceil(w / (2 * dxy)))
    lay = int(math.ceil(d / dz))
    accept = ""
    print("Dimensions of the film: {:.2f} x {:.2f} x {:.2f} mm \nPrinting time: {:.1f} min \n \nAccept? (y/n)".format(l, 2 * lin * dxy, lay * dz, l * lay * lin / v))
    accept = input()
    if accept == "y" or accept == "Y":
        f = open(filename, "a")
        f.write("G91 \n")
        for i in range(lay):
            for j in range(lin):
                f.write("G1 \tX{:.2f} \tF{} \tE{:.5f} \n".format(l, v, l * ext))
                f.write("G1 \tY{:.2f} \tF{}\n".format(dxy, vf))
                f.write("G1 \tX{:.2f} \tF{} \tE{:.5f} \n".format(-l, v, l * ext))
                f.write("G1 \tY{:.2f} \tF{}\n".format(dxy, vf))
            f.write("\nG1 \tX{:.2f} \tF{}\nG1 \tY{:.2f} \tF{} \nG1 \tZ{:.2f} \tF{}\nG1 \tX{:.2f} \tF{}\n".format(-dxy, vf, -2 * lin * dxy, vf, dz, vf, dxy, vf))
    else:
        print("Generating aborted")

def concentric_rel(filename, d):
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    tot_len = 0
    for i in range(n):
        tot_len += 2 * math.pi * (i + 0.5) * dxy
    accept = ""
    print("Diameter of the film: {} mm \nPrinting time: {:.1f} min \n \nAccept? (y/n)".format(2 * (n + 1) * dxy, tot_len / v))
    accept = input()
    if accept == "y" or accept == "Y":
        f = open(filename, "a")
        f.write("G91 \n")
        for i in range(n + 1):
            f.write("G2 \tX0 \tY0 \tI{} \tJ0 \tE{:.5f} \tF{}\n".format((i + 0.5) * dxy, 2 * math.pi * (i + 0.5) * dxy * ext, v))
            f.write("G1 \tX{:.2f} \tF{}\n".format(-dxy, vf))
    else:
        print("Generating aborted")

def archim_rel(filename, d):
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    tot_len = 0
    for i in range(n):
        tot_len += 2 * math.pi * (i + 0.5) * dxy
    accept = ""
    print("Diameter of the film: {} mm \nPrinting time: {:.1f} min \n \nAccept? (y/n)".format(2 * (n + 1) * dxy, tot_len / v))
    accept = input()
    if accept == "y" or accept == "Y":
        f = open(filename, "a")
        f.write("G91 \n")
        for i in range(n + 1):
            f.write("G2 \tX0 \tY0 \tI{} \tJ0 \tE{:.5f} \tF{}\n".format((i + 0.5) * dxy, 2 * math.pi * (i + 0.5) * dxy * ext, v))
            f.write("G1 \tX{:.2f} \tF{}\n".format(-dxy, vf))
    else:
        print("Generating aborted")
