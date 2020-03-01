(This code should print a cylinder layer by layer. The height will at the least the height defined in the code)

(Parameters used for printing)
#<r> = 4              (radius of the cylinder in mm)
#<h> = 4              (height of the cylinder in mm)

(Parameters depending on used nozzle: currently for 0.337 mm)
#<ext> = 0.002      (extrution ratio, how much the syringe moves down per 1 mm of print path)
#<v> = 30           (printing speed)
#<dz> = 0.12        (Z spacing)

G91         (switch to relative position mode)
G1 X20 F40  (clean the nozzle)
G0 Z5       (raise nozzle from the bed)
G0 X[10 + #<r>] Y[10 + #<r>]  (move the starting position to avoid lumps)
G0 Z-5      (lower nozzle onto the bed)

#101 = 1    (define first counter)
WHILE [[#101 * <dz>] LT #<h>] DO1  (while the counter one is less or even the parameter n do)
  G2 X0 Y0 I[#<r>] J0 E[2 * #<ext> * 3.142 * #<r>] F#<v>   (print circle)
  G0 Z#<dz>                                                (move one layer up)
  #101 = #101 + 1
END1

G0 X20 Y20 Z20     (move the finish position to avoid lumps)
