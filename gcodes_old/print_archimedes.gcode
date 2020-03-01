(This code should print archimedes spiral. We print it in 90 deg steps where we
increase the radius of the each next step by 1/4 of the width of a single line)

(Parameters used for printing)
#<r> = 4              (radius of desired spiral in mm)

(Parameters depending on used nozzle: currently for 0.337 mm)
#<ext> = 0.002    (extrution ratio, how much the syringe moves down per 1 mm of print path)
#<v> = 30       (printing speed)
#<dxy> = 0.32      (XY spacing)
#<dr> = #<dxy> / 4


G91         (switch to relative position mode)
G1 X20 F40  (clean the nozzle)
G0 Z5       (raise nozzle from the bed)
G0 X[10 + #<r>] Y[10 + #<r>]  (move the starting position to avoid lumps)
G0 Z-5      (lower nozzle onto the bed)

#101 = 0    (define first counter)
WHILE [[#101 * #<dxy>] LT #<r>] DO1  (while the radius is smaller than maximal radius do)
  G2 X[+#101 * #<dxy> + 0 * #<dr>]  Y[+#101 * #<dxy> + 0 * #<dr>] I[#101 * #<dxy> + 0 * #<dr>] J0  E[#<ext> * 1.571 * [#101 * #<dxy> + 0 * #<dr>]] F#<v>
  G2 X[+#101 * #<dxy> + 1 * #<dr>]  Y[-#101 * #<dxy> - 1 * #<dr>] I0 J[#101 * #<dxy> + 1 * #<dr>]  E[#<ext> * 1.571 * [#101 * #<dxy> + 1 * #<dr>]] F#<v>
  G2 X[-#101 * #<dxy> - 2 * #<dr>]  Y[-#101 * #<dxy> - 2 * #<dr>] I[-#101 * #<dxy> - 2 * #<dr>] J0  E[#<ext> * 1.571 * [#101 * #<dxy> + 2 * #<dr>]] F#<v>
  G2 X[-#101 * #<dxy> - 3 * #<dr>]  Y[+#101 * #<dxy> + 3 * #<dr>] I0 J[-#101 * #<dxy> - 3 * #<dr>]  E[#<ext> * 1.571 * [#101 * #<dxy> + 3 * #<dr>]] F#<v>
  #101 = #101 + 1
END1

G0 X20 Y20 Z20     (move the finish position to avoid lumps)
