import math, os, scipy
import numpy as np
from scipy import optimize
from params import *

# FUNCTIONS USED IN 2D PRINT PATHS
def rad(d):
    r = d / 2 - dxy / 2         # radius of the printed circle
    s = 2 * math.pi * r / dxy   # circumference of the circle
    n = math.floor(math.log(s, 2)) # 2 ** n lines will be used to print the circle

    # define first 4 lines of the circle. [normalized angle, start_x, start_y, end_x, end_y]
    lines = np.array([[0, r, 0, 0, 0], [0.25, 0, r, 0, 0],
     [0.5, -r, 0, 0, 0], [0.75, 0, -r, 0, 0]])

    # calculate all the next lines
    for i in range(2, n + 1):
        a = 2 * math.pi / (2 ** i)                  # increment of angle
        r0 = dxy * (1 / 2 + 0.5 / math.sin(a / 2))  # distance from the center to start the lines from
        for j in range(2 ** i):
            ap = a * (j + 0.5)  # angle of current line
            temp = np.array([ap / (2 * math.pi), math.cos(ap) * r, math.sin(ap) * r, math.cos(ap) * r0, math.sin(ap) * r0])
            lines = np.append(lines, np.reshape(temp, (1, 5)), axis = 0)

    lines = lines[lines[:, 0].argsort()] # sort by angle
    lines = np.array(lines)
    return lines

def arch(d, slices):
    n = int(math.ceil((d - 2 * dxy) / (2 * dxy)))
    arcs = np.empty((n * slices, 5))
    ang_step = 2 * math.pi / slices
    ox, oy = 0, 0

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



# FUNCTIONS USED IN 3D PRINT PATHS

def opt(z_inc, fnc, z0): # function used to find correct z increment
    return (z_inc / dz) ** 2 + ((fnc(z0 - z_inc) - fnc(z0)) / dxy) ** 2 - 1

def lay_3d(h, fnc, args): # function used to calculate the layer heights and radiuses for any given height and function
    def n_fnc(x):
        return fnc(x, *args)
    z_arr = np.array(0)
    c_z = 0

    while c_z < h and not math.isnan(n_fnc(c_z)):
        sol = scipy.optimize.bisect(opt, 0, dz, args = (n_fnc, c_z)) # find next z
        c_z += sol
        z_arr = np.append(h_arr, np.array(c_z))

    z_arr = np.reshape(h_arr, (1, h_arr.shape[0]))
    z_r_arr = np.empty((h_arr.shape[0], 2))
    z_r_arr = np.transpose(np.append(h_arr, n_fnc(h_arr), axis = 0))
    z_r_arr = np.nan_to_num(z_r_arr)
    return z_r_arr

def arch_3d(h, fnc, args, slices):
    z_r = lay_3d(h, fnc, args)
    n = z_r.shape[0]

    ang_step = 2 * math.pi / slices
    ox, oy = 0, 0
    z_r_slices = np.empty(((n - 1) * slices, 2))
    z_r_slices[0] = z_r[0]
    
    for i in range(1, n):
        d_z_r = (z_r[i] - z_r[i - 1]) / slices
        for j in range(slices):
            z_r_slices[(i- 1) * slices + j] = z_r[i - 1] + j * d_z_r

    arcs = np.empty((z_r_slices.shape[0], 6))

    for i in range(z_r_slices.shape[0]):
        r_temp = z_r_slices[i, 1]
        X = np.cos(ang_step * (i + 1)) * r_temp - ox
        Y = np.sin(ang_step * (i + 1)) * r_temp - oy
        Z = z_r_slices[i, 0]
        I = -np.cos(ang_step * (i)) * r_temp
        J = -np.sin(ang_step * (i)) * r_temp
        arcs[i] = [X, Y, Z, I, J, r_temp]
        ox += dxy / slices * np.cos(ang_step * (i + 1))
        oy += dxy / slices * np.sin(ang_step * (i + 1))

    return arcs
