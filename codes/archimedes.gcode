(Initialization)
M104 	S105
M140 	S0
M109 	S105
M190 	S0
G91 
G01 	X20 	F40 	 E0.04
G01 	Z1 	F1000
G01 	X-15.00 	Y8.00 	F1000
G01 	Z-1 	F1000
G90 
G92 	X0 	Y0 	Z0
G90

(Printing archimedes spiral of diameter 10.00)
G90 
M83 
G01 	X0.16 	Y0.00 	F1000
G03 	X0.00 	Y0.16 	F40 	E0.00050 	I-0.16 	J0.00
G03 	X-0.24 	Y-0.08 	F40 	E0.00075 	I-0.00 	J-0.24
G03 	X0.08 	Y-0.40 	F40 	E0.00101 	I0.32 	J-0.00
G03 	X0.48 	Y-0.00 	F40 	E0.00126 	I0.00 	J0.40
G03 	X0.00 	Y0.48 	F40 	E0.00151 	I-0.48 	J0.00
G03 	X-0.56 	Y-0.08 	F40 	E0.00176 	I-0.00 	J-0.56
G03 	X0.08 	Y-0.72 	F40 	E0.00201 	I0.64 	J-0.00
G03 	X0.80 	Y-0.00 	F40 	E0.00226 	I0.00 	J0.72
G03 	X0.00 	Y0.80 	F40 	E0.00251 	I-0.80 	J0.00
G03 	X-0.88 	Y-0.08 	F40 	E0.00276 	I-0.00 	J-0.88
G03 	X0.08 	Y-1.04 	F40 	E0.00302 	I0.96 	J-0.00
G03 	X1.12 	Y-0.00 	F40 	E0.00327 	I0.00 	J1.04
G03 	X-0.00 	Y1.12 	F40 	E0.00352 	I-1.12 	J0.00
G03 	X-1.20 	Y-0.08 	F40 	E0.00377 	I0.00 	J-1.20
G03 	X0.08 	Y-1.36 	F40 	E0.00402 	I1.28 	J-0.00
G03 	X1.44 	Y-0.00 	F40 	E0.00427 	I0.00 	J1.36
G03 	X-0.00 	Y1.44 	F40 	E0.00452 	I-1.44 	J0.00
G03 	X-1.52 	Y-0.08 	F40 	E0.00478 	I0.00 	J-1.52
G03 	X0.08 	Y-1.68 	F40 	E0.00503 	I1.60 	J-0.00
G03 	X1.76 	Y-0.00 	F40 	E0.00528 	I0.00 	J1.68
G03 	X-0.00 	Y1.76 	F40 	E0.00553 	I-1.76 	J0.00
G03 	X-1.84 	Y-0.08 	F40 	E0.00578 	I0.00 	J-1.84
G03 	X0.08 	Y-2.00 	F40 	E0.00603 	I1.92 	J-0.00
G03 	X2.08 	Y-0.00 	F40 	E0.00628 	I0.00 	J2.00
G03 	X0.00 	Y2.08 	F40 	E0.00653 	I-2.08 	J0.00
G03 	X-2.16 	Y-0.08 	F40 	E0.00679 	I0.00 	J-2.16
G03 	X0.08 	Y-2.32 	F40 	E0.00704 	I2.24 	J0.00
G03 	X2.40 	Y-0.00 	F40 	E0.00729 	I0.00 	J2.32
G03 	X0.00 	Y2.40 	F40 	E0.00754 	I-2.40 	J0.00
G03 	X-2.48 	Y-0.08 	F40 	E0.00779 	I0.00 	J-2.48
G03 	X0.08 	Y-2.64 	F40 	E0.00804 	I2.56 	J-0.00
G03 	X2.72 	Y-0.00 	F40 	E0.00829 	I0.00 	J2.64
G03 	X0.00 	Y2.72 	F40 	E0.00855 	I-2.72 	J0.00
G03 	X-2.80 	Y-0.08 	F40 	E0.00880 	I-0.00 	J-2.80
G03 	X0.08 	Y-2.96 	F40 	E0.00905 	I2.88 	J0.00
G03 	X3.04 	Y-0.00 	F40 	E0.00930 	I0.00 	J2.96
G03 	X0.00 	Y3.04 	F40 	E0.00955 	I-3.04 	J0.00
G03 	X-3.12 	Y-0.08 	F40 	E0.00980 	I-0.00 	J-3.12
G03 	X0.08 	Y-3.28 	F40 	E0.01005 	I3.20 	J-0.00
G03 	X3.36 	Y-0.00 	F40 	E0.01030 	I0.00 	J3.28
G03 	X0.00 	Y3.36 	F40 	E0.01056 	I-3.36 	J0.00
G03 	X-3.44 	Y-0.08 	F40 	E0.01081 	I-0.00 	J-3.44
G03 	X0.08 	Y-3.60 	F40 	E0.01106 	I3.52 	J0.00
G03 	X3.68 	Y-0.00 	F40 	E0.01131 	I0.00 	J3.60
G03 	X0.00 	Y3.68 	F40 	E0.01156 	I-3.68 	J0.00
G03 	X-3.76 	Y-0.08 	F40 	E0.01181 	I-0.00 	J-3.76
G03 	X0.08 	Y-3.92 	F40 	E0.01206 	I3.84 	J-0.00
G03 	X4.00 	Y-0.00 	F40 	E0.01232 	I-0.00 	J3.92
G03 	X0.00 	Y4.00 	F40 	E0.01257 	I-4.00 	J0.00
G03 	X-4.08 	Y-0.08 	F40 	E0.01282 	I-0.00 	J-4.08
G03 	X0.08 	Y-4.24 	F40 	E0.01307 	I4.16 	J0.00
G03 	X4.32 	Y0.00 	F40 	E0.01332 	I0.00 	J4.24
G03 	X0.00 	Y4.32 	F40 	E0.01357 	I-4.32 	J-0.00
G03 	X-4.40 	Y-0.08 	F40 	E0.01382 	I-0.00 	J-4.40
G03 	X0.08 	Y-4.56 	F40 	E0.01407 	I4.48 	J-0.00
G03 	X4.64 	Y-0.00 	F40 	E0.01433 	I-0.00 	J4.56
G03 	X0.00 	Y4.64 	F40 	E0.01458 	I-4.64 	J0.00
G03 	X-4.72 	Y-0.08 	F40 	E0.01483 	I-0.00 	J-4.72
G03 	X0.08 	Y-4.88 	F40 	E0.01508 	I4.80 	J0.00
G03 	X4.96 	Y-0.00 	F40 	E0.01533 	I0.00 	J4.88

(Raising by 1 layers)
G90 
G01 	Z0.20 	F1000

(Moving by 0, 0, 0)
G01 	Z1.20 	F1000
G01 	X0.00 	Y0.00 	F1000
G01 	Z0.20 	F1000

(Printing archimedes spiral of diameter 10.00)
G90 
M83 
G01 	X-0.16 	Y0.00 	F1000
G03 	X0.00 	Y-0.16 	F40 	E0.00050 	I0.16 	J0.00
G03 	X0.24 	Y0.08 	F40 	E0.00075 	I-0.00 	J0.24
G03 	X-0.08 	Y0.40 	F40 	E0.00101 	I-0.32 	J0.00
G03 	X-0.48 	Y0.00 	F40 	E0.00126 	I-0.00 	J-0.40
G03 	X-0.00 	Y-0.48 	F40 	E0.00151 	I0.48 	J-0.00
G03 	X0.56 	Y0.08 	F40 	E0.00176 	I0.00 	J0.56
G03 	X-0.08 	Y0.72 	F40 	E0.00201 	I-0.64 	J0.00
G03 	X-0.80 	Y0.00 	F40 	E0.00226 	I-0.00 	J-0.72
G03 	X-0.00 	Y-0.80 	F40 	E0.00251 	I0.80 	J-0.00
G03 	X0.88 	Y0.08 	F40 	E0.00276 	I0.00 	J0.88
G03 	X-0.08 	Y1.04 	F40 	E0.00302 	I-0.96 	J0.00
G03 	X-1.12 	Y0.00 	F40 	E0.00327 	I-0.00 	J-1.04
G03 	X0.00 	Y-1.12 	F40 	E0.00352 	I1.12 	J-0.00
G03 	X1.20 	Y0.08 	F40 	E0.00377 	I-0.00 	J1.20
G03 	X-0.08 	Y1.36 	F40 	E0.00402 	I-1.28 	J0.00
G03 	X-1.44 	Y0.00 	F40 	E0.00427 	I-0.00 	J-1.36
G03 	X0.00 	Y-1.44 	F40 	E0.00452 	I1.44 	J-0.00
G03 	X1.52 	Y0.08 	F40 	E0.00478 	I-0.00 	J1.52
G03 	X-0.08 	Y1.68 	F40 	E0.00503 	I-1.60 	J0.00
G03 	X-1.76 	Y0.00 	F40 	E0.00528 	I-0.00 	J-1.68
G03 	X0.00 	Y-1.76 	F40 	E0.00553 	I1.76 	J-0.00
G03 	X1.84 	Y0.08 	F40 	E0.00578 	I-0.00 	J1.84
G03 	X-0.08 	Y2.00 	F40 	E0.00603 	I-1.92 	J0.00
G03 	X-2.08 	Y0.00 	F40 	E0.00628 	I-0.00 	J-2.00
G03 	X-0.00 	Y-2.08 	F40 	E0.00653 	I2.08 	J-0.00
G03 	X2.16 	Y0.08 	F40 	E0.00679 	I-0.00 	J2.16
G03 	X-0.08 	Y2.32 	F40 	E0.00704 	I-2.24 	J-0.00
G03 	X-2.40 	Y0.00 	F40 	E0.00729 	I-0.00 	J-2.32
G03 	X-0.00 	Y-2.40 	F40 	E0.00754 	I2.40 	J-0.00
G03 	X2.48 	Y0.08 	F40 	E0.00779 	I-0.00 	J2.48
G03 	X-0.08 	Y2.64 	F40 	E0.00804 	I-2.56 	J0.00
G03 	X-2.72 	Y0.00 	F40 	E0.00829 	I-0.00 	J-2.64
G03 	X-0.00 	Y-2.72 	F40 	E0.00855 	I2.72 	J-0.00
G03 	X2.80 	Y0.08 	F40 	E0.00880 	I0.00 	J2.80
G03 	X-0.08 	Y2.96 	F40 	E0.00905 	I-2.88 	J-0.00
G03 	X-3.04 	Y0.00 	F40 	E0.00930 	I-0.00 	J-2.96
G03 	X-0.00 	Y-3.04 	F40 	E0.00955 	I3.04 	J-0.00
G03 	X3.12 	Y0.08 	F40 	E0.00980 	I0.00 	J3.12
G03 	X-0.08 	Y3.28 	F40 	E0.01005 	I-3.20 	J0.00
G03 	X-3.36 	Y0.00 	F40 	E0.01030 	I-0.00 	J-3.28
G03 	X-0.00 	Y-3.36 	F40 	E0.01056 	I3.36 	J-0.00
G03 	X3.44 	Y0.08 	F40 	E0.01081 	I0.00 	J3.44
G03 	X-0.08 	Y3.60 	F40 	E0.01106 	I-3.52 	J-0.00
G03 	X-3.68 	Y0.00 	F40 	E0.01131 	I-0.00 	J-3.60
G03 	X-0.00 	Y-3.68 	F40 	E0.01156 	I3.68 	J-0.00
G03 	X3.76 	Y0.08 	F40 	E0.01181 	I0.00 	J3.76
G03 	X-0.08 	Y3.92 	F40 	E0.01206 	I-3.84 	J0.00
G03 	X-4.00 	Y0.00 	F40 	E0.01232 	I0.00 	J-3.92
G03 	X-0.00 	Y-4.00 	F40 	E0.01257 	I4.00 	J-0.00
G03 	X4.08 	Y0.08 	F40 	E0.01282 	I0.00 	J4.08
G03 	X-0.08 	Y4.24 	F40 	E0.01307 	I-4.16 	J-0.00
G03 	X-4.32 	Y-0.00 	F40 	E0.01332 	I-0.00 	J-4.24
G03 	X-0.00 	Y-4.32 	F40 	E0.01357 	I4.32 	J0.00
G03 	X4.40 	Y0.08 	F40 	E0.01382 	I0.00 	J4.40
G03 	X-0.08 	Y4.56 	F40 	E0.01407 	I-4.48 	J0.00
G03 	X-4.64 	Y0.00 	F40 	E0.01433 	I0.00 	J-4.56
G03 	X-0.00 	Y-4.64 	F40 	E0.01458 	I4.64 	J-0.00
G03 	X4.72 	Y0.08 	F40 	E0.01483 	I0.00 	J4.72
G03 	X-0.08 	Y4.88 	F40 	E0.01508 	I-4.80 	J-0.00
G03 	X-4.96 	Y0.00 	F40 	E0.01533 	I-0.00 	J-4.88

(Closing)
G01 	X-5.00 	Y8.00 	Z5.04 	F1000
M104 S105
M140 S0
