import numpy as np

def circle(z, R):
    return np.sqrt(R ** 2 - z ** 2)

def elipsoid(z, R, h):
    return R * np.sqrt(1 - (z / h) ** 2)
