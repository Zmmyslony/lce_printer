For testing the generated code it is useful to use gcode simulators. The code is tested using CAMotics (https://camotics.org/download.html). It does not have deposition function, however it traces the movement of the nozzle. 
# Files 

**params.py**\
  Contains all the parameters of our printer. Should be changed depending on used nozzle.

**func.py** \
  Contains all the predefined functions used for generating gcode.

**code_gen.py** \
  Contains the codes which utilizes the functions from func.py in order to create gcode files.

## Functions 
  Each block of code used for generating gcode should look like this: 
  
    init(x, y) 
    pattern functions 
    close(filename, x, y, z)
  The output code will be saved as “codes/filename.gcode”.

**init(x, y, Tn = 95, Tb = 0)**\
  Starts a new file “codes/temp.gcode” and initializes the printing process. First it starts heating the nozzle to Tn and bed to temperature Tb and then waits until temperatures are reached. Default temperatures are set to 95°C and 0°C but can be changed. Then it cleans the nozzle by moving 20 mm in the x direction and then moves (x, y) in relation to in the initial position which it then defines as (0, 0, 0) position.

**close(filename, x, y, z, Tn = 0, Tb = 0, s = 0)**\
  Moves the nozzle (x, y, z) in relation to the finishing position and starts cooling down nozzle to temperature Tn and bed to temperature Tb. Default temperatures are set to 0°C but can be changed. If s = 0 then we need to confirm saving of the code and if s = 1 the code is automatically saved. It is saved by renaming “codes/temp.gcode” to “codes/filename.gcode”.

**clean(x, y)** \
  Cleans the nozzle and then moves by (x, y) relative to initial position.
  
**wait(t, x, y)** \
  Waits for t seconds, and then cleans the nozzle and then moves by (x, y) relative to initial position.

**move(x = 0, y = 0, z = 0)** \
  Moves the nozzle by relative (x, y, z) amount.

**set_pos(x, y, z)** \
  Sets the current position as (x, y, z) and moves to that position.

**rise(n = 1)** \
  Rises the nozzle by n layers.

**film(l, w, d)** \
  Prints film with orientation parallel to X axis of length l, and width and thickness closest to w and d (but always more). Finishes at starting position but at different height.

**conc(d)** \
  Prints concentric circles of the closest diameter to the d but bigger. Finishes at starting position (better version of it is archim, no discontinuities).

**archim(d, slices = 4, alpha = 0)** \
  Prints slices step approximation of archimedean spiral of the closest diameter to the d but bigger. It approximates the spiral by increasing the radius of the circle every 1/slices of revolution by 1/slices of the thickness of the line. Finishes at x = - r, where r is the radius of the spiral. Can be rotated by specifing alpha.

**archim_3d(h, fnc, args, slices = 4, alpha = 0)** \
  Similar to archim but prints 3d shapes. fnc has to be function r(z, args) and args have to be specified. h is the printed height of the 3d shape. Slices and alpha same as in archim. Currently predefined functions: circle(z, R), elipsoid(z, R, h).
  
**radial(d)** \
  Prints radial pattern. It cuts the circle in power of 2 lines of different length and prints them line by line.

