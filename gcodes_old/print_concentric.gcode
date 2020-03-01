(This code should print concentric circles)

(Parameters used for printing)
#<r> = 4              (radius of the desired shape in mm)

(Parameters depending on used nozzle: currently for 0.337 mm)
#<ext> = 0.002      (extrution ratio, how much the syringe moves down per 1 mm of print path)
#<v> = 30           (printing speed)
#<dxy> = 0.32      (XY spacing)

G91         (switch to relative position mode)
G1 X20 F40  (clean the nozzle)
G0 Z5       (raise nozzle from the bed)
G0 X[10 + #<n> * <dxy>] Y[10 + #<n> * <dxy>]  (move the starting position to avoid lumps)
G0 Z-5      (lower nozzle onto the bed)
#101 = 0.5  (define first counter, it's 0.5 so that there is no hole in the middle)

WHILE [[#101 * #<dxy>] LT #<r>] DO1  (while the counter one is less or even the parameter n do)
  G2 X0 Y0 I[#101 * #<dxy>] J0  E[2 * #<ext> * 3.142 * #101 * #<dxy>] F#<v>
  G0 X[0 - #<dxy>]
  #101 = #101 + 1
END1

G0 X20 Y20 Z20     (move the finish position to avoid lumps)
