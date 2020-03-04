import math
import os
import numpy as np
import scipy
from scipy import optimize
from params import *
from func import *

def rad(d):
    mult = 2 * math.pi
    r = d / 2 - dxy / 2         # radius of the printed circle
    s = 2 * math.pi * r / dxy   # circumference of the circle
    n = math.floor(math.log(s, 2)) # 2 ** n lines will be used to print the circle

    # define first 4 lines of the circle. [normalized angle, start_x, start_y, end_x, end_y]
    lines = np.array([[0, r, 0, 0, 0], [0.25, 0, r, 0, 0],
     [0.5, -r, 0, 0, 0], [0.75, 0, -r, 0, 0]])

    # calculate all the next lines
    for i in range(2, n + 1):
        a = 2 * math.pi / (2 ** i) # increment of angle
        r0 = dxy * (1 / 2 + 0.5 / math.sin(a / 2))
        for j in range(2 ** i):
            ap = a * (j + 0.5)  # angle of current line
            temp = np.array([ap * mult, math.cos(ap) * r, math.sin(ap) * r, math.cos(ap) * r0, math.sin(ap) * r0])
            lines = np.append(lines, np.reshape(temp, (1, 5)), axis = 0)
    lines = lines[lines[:,0].argsort()] # sort by angle
    lines = np.array(lines)
    return lines

def arch(d, slices):
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    arcs = np.empty((n * slices, 5))
    ang_step = 2 * math.pi / slices
    ox = 0
    oy = 0
    for i in range(n * slices):
        r_temp = i * dxy / slices + 0.5 * dxy
        X = np.cos(ang_step * (i + 1)) * r_temp - ox
        Y = np.sin(ang_step * (i + 1)) * r_temp - oy
        I = -np.cos(ang_step * (i)) * r_temp
        J = -np.sin(ang_step * (i)) * r_temp
        arcs[i] = [X, Y, I, J, r_temp]
        ox += dxy / slices * np.cos(ang_step * (i + 1))
        oy += dxy / slices * np.sin(ang_step * (i + 1))
    np.set_printoptions(precision = 5)
    return arcs


def circle(z, R):
    return np.sqrt(R ** 2 - z ** 2)

def elipsoid(z, R, h):
    return R * np.sqrt(1 - (z / h) ** 2)

def opt(z_inc, fnc, z0):
    return (z_inc / dz) ** 2 + ((fnc(z0 - z_inc) - fnc(z0)) / dxy) ** 2 - 1

def lay_3d(h, fnc, args):
    def n_fnc(x):
        return fnc(x, *args)
    h_arr = np.array(0)
    c_z = 0
    while c_z < h and not math.isnan(n_fnc(c_z)):
        sol = scipy.optimize.bisect(opt, 0, dz, args = (n_fnc, c_z))
        c_z += sol
        h_arr = np.append(h_arr, np.array(c_z))
    h_arr = np.reshape(h_arr, (1, h_arr.shape[0]))
    h_r_arr = np.empty((h_arr.shape[0], 2))
    h_r_arr = np.transpose(np.append(h_arr, n_fnc(h_arr), axis = 0))
    h_r_arr = np.nan_to_num(h_r_arr)
    return h_r_arr

def arch_3d(h, fnc, args, slices):
    h_r = lay_3d(h, fnc, args)
    n = h_r.shape[0]

    ang_step = 2 * math.pi / slices
    ox = 0
    oy = 0
    h_r_slices = np.empty(((n - 1) * slices, 2))
    h_r_slices[0] = h_r[0]
    for i in range(1, n):
        d_h_r = (h_r[i] - h_r[i - 1]) / slices
        for j in range(slices):
            h_r_slices[(i- 1) * slices + j] = h_r[i - 1] + j * d_h_r
    #print(h_r_slices)

    arcs = np.empty((h_r_slices.shape[0], 6))
    for i in range(h_r_slices.shape[0]):
        r_temp = h_r_slices[i, 1]
        X = np.cos(ang_step * (i + 1)) * r_temp - ox
        Y = np.sin(ang_step * (i + 1)) * r_temp - oy
        Z = h_r_slices[i, 0]
        I = -np.cos(ang_step * (i)) * r_temp
        J = -np.sin(ang_step * (i)) * r_temp
        arcs[i] = [X, Y, Z, I, J, r_temp]
        ox += dxy / slices * np.cos(ang_step * (i + 1))
        oy += dxy / slices * np.sin(ang_step * (i + 1))
    np.set_printoptions(precision = 5)
    return arcs

#archim_3d(6, circle, [6], 4)
