(Initialization)
M104 	S90
M140 	S0
M109 	S90
M190 	S0
G91 
G01 	X20 	F40 	 E0.04
G01 	Z1 	F1000
G01 	X-40.00 	Y15.00 	F1000
G01 	Z-1 	F1000
G92 	X0 	Y0 	Z0
G90

(Printing concentric circles of diameter 10.08)
G90 
G01 	X0.00 	Y0.00 	F1000
G01 	X-0.12 	F1000 
G02 	X0.12 	Y0.00 	F40 	E0.00075 	I0.12 	J0.00
G02 	X-0.12 	Y0.00 	F40 	E0.00075 	I-0.12 	J0.00
G01 	X-0.36 	F1000 
G02 	X0.36 	Y0.00 	F40 	E0.00226 	I0.36 	J0.00
G02 	X-0.36 	Y0.00 	F40 	E0.00226 	I-0.36 	J0.00
G01 	X-0.60 	F1000 
G02 	X0.60 	Y0.00 	F40 	E0.00377 	I0.60 	J0.00
G02 	X-0.60 	Y0.00 	F40 	E0.00377 	I-0.60 	J0.00
G01 	X-0.84 	F1000 
G02 	X0.84 	Y0.00 	F40 	E0.00528 	I0.84 	J0.00
G02 	X-0.84 	Y0.00 	F40 	E0.00528 	I-0.84 	J0.00
G01 	X-1.08 	F1000 
G02 	X1.08 	Y0.00 	F40 	E0.00679 	I1.08 	J0.00
G02 	X-1.08 	Y0.00 	F40 	E0.00679 	I-1.08 	J0.00
G01 	X-1.32 	F1000 
G02 	X1.32 	Y0.00 	F40 	E0.00829 	I1.32 	J0.00
G02 	X-1.32 	Y0.00 	F40 	E0.00829 	I-1.32 	J0.00
G01 	X-1.56 	F1000 
G02 	X1.56 	Y0.00 	F40 	E0.00980 	I1.56 	J0.00
G02 	X-1.56 	Y0.00 	F40 	E0.00980 	I-1.56 	J0.00
G01 	X-1.80 	F1000 
G02 	X1.80 	Y0.00 	F40 	E0.01131 	I1.80 	J0.00
G02 	X-1.80 	Y0.00 	F40 	E0.01131 	I-1.80 	J0.00
G01 	X-2.04 	F1000 
G02 	X2.04 	Y0.00 	F40 	E0.01282 	I2.04 	J0.00
G02 	X-2.04 	Y0.00 	F40 	E0.01282 	I-2.04 	J0.00
G01 	X-2.28 	F1000 
G02 	X2.28 	Y0.00 	F40 	E0.01433 	I2.28 	J0.00
G02 	X-2.28 	Y0.00 	F40 	E0.01433 	I-2.28 	J0.00
G01 	X-2.52 	F1000 
G02 	X2.52 	Y0.00 	F40 	E0.01583 	I2.52 	J0.00
G02 	X-2.52 	Y0.00 	F40 	E0.01583 	I-2.52 	J0.00
G01 	X-2.76 	F1000 
G02 	X2.76 	Y0.00 	F40 	E0.01734 	I2.76 	J0.00
G02 	X-2.76 	Y0.00 	F40 	E0.01734 	I-2.76 	J0.00
G01 	X-3.00 	F1000 
G02 	X3.00 	Y0.00 	F40 	E0.01885 	I3.00 	J0.00
G02 	X-3.00 	Y0.00 	F40 	E0.01885 	I-3.00 	J0.00
G01 	X-3.24 	F1000 
G02 	X3.24 	Y0.00 	F40 	E0.02036 	I3.24 	J0.00
G02 	X-3.24 	Y0.00 	F40 	E0.02036 	I-3.24 	J0.00
G01 	X-3.48 	F1000 
G02 	X3.48 	Y0.00 	F40 	E0.02187 	I3.48 	J0.00
G02 	X-3.48 	Y0.00 	F40 	E0.02187 	I-3.48 	J0.00
G01 	X-3.72 	F1000 
G02 	X3.72 	Y0.00 	F40 	E0.02337 	I3.72 	J0.00
G02 	X-3.72 	Y0.00 	F40 	E0.02337 	I-3.72 	J0.00
G01 	X-3.96 	F1000 
G02 	X3.96 	Y0.00 	F40 	E0.02488 	I3.96 	J0.00
G02 	X-3.96 	Y0.00 	F40 	E0.02488 	I-3.96 	J0.00
G01 	X-4.20 	F1000 
G02 	X4.20 	Y0.00 	F40 	E0.02639 	I4.20 	J0.00
G02 	X-4.20 	Y0.00 	F40 	E0.02639 	I-4.20 	J0.00
G01 	X-4.44 	F1000 
G02 	X4.44 	Y0.00 	F40 	E0.02790 	I4.44 	J0.00
G02 	X-4.44 	Y0.00 	F40 	E0.02790 	I-4.44 	J0.00
G01 	X-4.68 	F1000 
G02 	X4.68 	Y0.00 	F40 	E0.02941 	I4.68 	J0.00
G02 	X-4.68 	Y0.00 	F40 	E0.02941 	I-4.68 	J0.00
G01 	X-4.92 	F1000 
G02 	X4.92 	Y0.00 	F40 	E0.03091 	I4.92 	J0.00
G02 	X-4.92 	Y0.00 	F40 	E0.03091 	I-4.92 	J0.00

(Closing)
G01 	X0.00 	Y-5.00 	Z5.00 	F1000
M104 S0M104 S0