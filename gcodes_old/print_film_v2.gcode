;(Should be more consistent than v1 as each point
;of next layer is created after the same amount of
;time as we are only printing forwards.
;Printing should take 2 * 2_lin * layer * len / v)

#101 = 1 (counter 1)
#102 = 1 (counter 2)

(Parameters used for printing)
#<2_lin> = 4              (number of pairs of lines to print)
#<lay> = 4                (number of layers to print)
#<len> = 30               (print length in mm)

(Parameters depending on used nozzle: currently for 0.337 mm)
#<ext> = 0.0025    (extrution ratio, how much the syringe moves down per 1 mm of print path)
#<ext_amt> = [#<len> * #<ext>]
#<v> = 30         (printing speed)
#<dxy> = 0.32      (XY spacing)
#<dz> = 0.16       (Z spacing)

G91         (switch to relative position)
G1 X20 F40  (clean the nozzle)
G0 X10 Y10  (move the starting position to avoid lumps)

WHILE [#102 LE #<lay>] DO1
  #101 = 1
  WHILE [#101 LE #<2_lin>] DO2  (print one layer)
    G1 X#<len>        F#<v>  E#<ext_amt>    (print line going left)
    G0 Y#<dxy>                              (move one line up)
    G1 X[0-#<len>]    F#<v>  E#<ext_amt>    (print line going right)
    G0 Y#<dxy>                              (move one line up)
    #101 = #101 + 1
  END2
  G0 X[0-#<dxy>]                      (move to the left of the printing area)
  G0 Y[-2 * #<2_lin> * #<dxy>]        (move to the starting Y coord)
  G0 Z#<dz>                           (move one layer up)
  G0 X#<dxy>                          (move to the starting XY coord)
  #102 = #102 + 1
END1

G0 X20 Y20 Z20   (move the finish position to avoid lumps)
