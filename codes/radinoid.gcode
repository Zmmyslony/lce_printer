(Initialization)
M104 	S95
M109 	S95
G91 
G01 	X20 	F40 	 E0.04
G01 	Z5 	F1000
G01 	X-20.00 	Y20.00 	F1000
G01 	Z-5 	F1000
G92 	X0 	Y0 	Z0
G90

(Printing archimedes spiral of diameter 20.48)
G90 
G02 	X0.16 	Y0.16 	F40 	E0.00050 	I0.16 	J0.00
G02 	X0.40 	Y-0.08 	F40 	E0.00075 	I0.00 	J-0.24
G02 	X0.08 	Y-0.40 	F40 	E0.00101 	I-0.32 	J0.00
G02 	X-0.32 	Y0.00 	F40 	E0.00126 	I0.00 	J0.40
G02 	X0.16 	Y0.48 	F40 	E0.00151 	I0.48 	J0.00
G02 	X0.72 	Y-0.08 	F40 	E0.00176 	I0.00 	J-0.56
G02 	X0.08 	Y-0.72 	F40 	E0.00201 	I-0.64 	J0.00
G02 	X-0.64 	Y0.00 	F40 	E0.00226 	I0.00 	J0.72
G02 	X0.16 	Y0.80 	F40 	E0.00251 	I0.80 	J0.00
G02 	X1.04 	Y-0.08 	F40 	E0.00276 	I0.00 	J-0.88
G02 	X0.08 	Y-1.04 	F40 	E0.00302 	I-0.96 	J0.00
G02 	X-0.96 	Y0.00 	F40 	E0.00327 	I0.00 	J1.04
G02 	X0.16 	Y1.12 	F40 	E0.00352 	I1.12 	J0.00
G02 	X1.36 	Y-0.08 	F40 	E0.00377 	I0.00 	J-1.20
G02 	X0.08 	Y-1.36 	F40 	E0.00402 	I-1.28 	J0.00
G02 	X-1.28 	Y0.00 	F40 	E0.00427 	I0.00 	J1.36
G02 	X0.16 	Y1.44 	F40 	E0.00452 	I1.44 	J0.00
G02 	X1.68 	Y-0.08 	F40 	E0.00478 	I0.00 	J-1.52
G02 	X0.08 	Y-1.68 	F40 	E0.00503 	I-1.60 	J0.00
G02 	X-1.60 	Y0.00 	F40 	E0.00528 	I0.00 	J1.68
G02 	X0.16 	Y1.76 	F40 	E0.00553 	I1.76 	J0.00
G02 	X2.00 	Y-0.08 	F40 	E0.00578 	I0.00 	J-1.84
G02 	X0.08 	Y-2.00 	F40 	E0.00603 	I-1.92 	J0.00
G02 	X-1.92 	Y0.00 	F40 	E0.00628 	I0.00 	J2.00
G02 	X0.16 	Y2.08 	F40 	E0.00653 	I2.08 	J0.00
G02 	X2.32 	Y-0.08 	F40 	E0.00679 	I0.00 	J-2.16
G02 	X0.08 	Y-2.32 	F40 	E0.00704 	I-2.24 	J0.00
G02 	X-2.24 	Y0.00 	F40 	E0.00729 	I0.00 	J2.32
G02 	X0.16 	Y2.40 	F40 	E0.00754 	I2.40 	J0.00
G02 	X2.64 	Y-0.08 	F40 	E0.00779 	I0.00 	J-2.48
G02 	X0.08 	Y-2.64 	F40 	E0.00804 	I-2.56 	J0.00
G02 	X-2.56 	Y0.00 	F40 	E0.00829 	I0.00 	J2.64
G02 	X0.16 	Y2.72 	F40 	E0.00855 	I2.72 	J0.00
G02 	X2.96 	Y-0.08 	F40 	E0.00880 	I0.00 	J-2.80
G02 	X0.08 	Y-2.96 	F40 	E0.00905 	I-2.88 	J0.00
G02 	X-2.88 	Y0.00 	F40 	E0.00930 	I0.00 	J2.96
G02 	X0.16 	Y3.04 	F40 	E0.00955 	I3.04 	J0.00
G02 	X3.28 	Y-0.08 	F40 	E0.00980 	I0.00 	J-3.12
G02 	X0.08 	Y-3.28 	F40 	E0.01005 	I-3.20 	J0.00
G02 	X-3.20 	Y0.00 	F40 	E0.01030 	I0.00 	J3.28
G02 	X0.16 	Y3.36 	F40 	E0.01056 	I3.36 	J0.00
G02 	X3.60 	Y-0.08 	F40 	E0.01081 	I0.00 	J-3.44
G02 	X0.08 	Y-3.60 	F40 	E0.01106 	I-3.52 	J0.00
G02 	X-3.52 	Y0.00 	F40 	E0.01131 	I0.00 	J3.60
G02 	X0.16 	Y3.68 	F40 	E0.01156 	I3.68 	J0.00
G02 	X3.92 	Y-0.08 	F40 	E0.01181 	I0.00 	J-3.76
G02 	X0.08 	Y-3.92 	F40 	E0.01206 	I-3.84 	J0.00
G02 	X-3.84 	Y0.00 	F40 	E0.01232 	I0.00 	J3.92
G02 	X0.16 	Y4.00 	F40 	E0.01257 	I4.00 	J0.00
G02 	X4.24 	Y-0.08 	F40 	E0.01282 	I0.00 	J-4.08
G02 	X0.08 	Y-4.24 	F40 	E0.01307 	I-4.16 	J0.00
G02 	X-4.16 	Y0.00 	F40 	E0.01332 	I0.00 	J4.24
G02 	X0.16 	Y4.32 	F40 	E0.01357 	I4.32 	J0.00
G02 	X4.56 	Y-0.08 	F40 	E0.01382 	I0.00 	J-4.40
G02 	X0.08 	Y-4.56 	F40 	E0.01407 	I-4.48 	J0.00
G02 	X-4.48 	Y0.00 	F40 	E0.01433 	I0.00 	J4.56
G02 	X0.16 	Y4.64 	F40 	E0.01458 	I4.64 	J0.00
G02 	X4.88 	Y-0.08 	F40 	E0.01483 	I0.00 	J-4.72
G02 	X0.08 	Y-4.88 	F40 	E0.01508 	I-4.80 	J0.00
G02 	X-4.80 	Y0.00 	F40 	E0.01533 	I0.00 	J4.88
G02 	X0.16 	Y4.96 	F40 	E0.01558 	I4.96 	J0.00
G02 	X5.20 	Y-0.08 	F40 	E0.01583 	I0.00 	J-5.04
G02 	X0.08 	Y-5.20 	F40 	E0.01608 	I-5.12 	J0.00
G02 	X-5.12 	Y0.00 	F40 	E0.01634 	I0.00 	J5.20
G02 	X0.16 	Y5.28 	F40 	E0.01659 	I5.28 	J0.00
G02 	X5.52 	Y-0.08 	F40 	E0.01684 	I0.00 	J-5.36
G02 	X0.08 	Y-5.52 	F40 	E0.01709 	I-5.44 	J0.00
G02 	X-5.44 	Y0.00 	F40 	E0.01734 	I0.00 	J5.52
G02 	X0.16 	Y5.60 	F40 	E0.01759 	I5.60 	J0.00
G02 	X5.84 	Y-0.08 	F40 	E0.01784 	I0.00 	J-5.68
G02 	X0.08 	Y-5.84 	F40 	E0.01810 	I-5.76 	J0.00
G02 	X-5.76 	Y0.00 	F40 	E0.01835 	I0.00 	J5.84
G02 	X0.16 	Y5.92 	F40 	E0.01860 	I5.92 	J0.00
G02 	X6.16 	Y-0.08 	F40 	E0.01885 	I0.00 	J-6.00
G02 	X0.08 	Y-6.16 	F40 	E0.01910 	I-6.08 	J0.00
G02 	X-6.08 	Y0.00 	F40 	E0.01935 	I0.00 	J6.16
G02 	X0.16 	Y6.24 	F40 	E0.01960 	I6.24 	J0.00
G02 	X6.48 	Y-0.08 	F40 	E0.01985 	I0.00 	J-6.32
G02 	X0.08 	Y-6.48 	F40 	E0.02011 	I-6.40 	J0.00
G02 	X-6.40 	Y0.00 	F40 	E0.02036 	I0.00 	J6.48
G02 	X0.16 	Y6.56 	F40 	E0.02061 	I6.56 	J0.00
G02 	X6.80 	Y-0.08 	F40 	E0.02086 	I0.00 	J-6.64
G02 	X0.08 	Y-6.80 	F40 	E0.02111 	I-6.72 	J0.00
G02 	X-6.72 	Y0.00 	F40 	E0.02136 	I0.00 	J6.80
G02 	X0.16 	Y6.88 	F40 	E0.02161 	I6.88 	J0.00
G02 	X7.12 	Y-0.08 	F40 	E0.02187 	I0.00 	J-6.96
G02 	X0.08 	Y-7.12 	F40 	E0.02212 	I-7.04 	J0.00
G02 	X-7.04 	Y0.00 	F40 	E0.02237 	I0.00 	J7.12
G02 	X0.16 	Y7.20 	F40 	E0.02262 	I7.20 	J0.00
G02 	X7.44 	Y-0.08 	F40 	E0.02287 	I0.00 	J-7.28
G02 	X0.08 	Y-7.44 	F40 	E0.02312 	I-7.36 	J0.00
G02 	X-7.36 	Y0.00 	F40 	E0.02337 	I0.00 	J7.44
G02 	X0.16 	Y7.52 	F40 	E0.02362 	I7.52 	J0.00
G02 	X7.76 	Y-0.08 	F40 	E0.02388 	I0.00 	J-7.60
G02 	X0.08 	Y-7.76 	F40 	E0.02413 	I-7.68 	J0.00
G02 	X-7.68 	Y0.00 	F40 	E0.02438 	I0.00 	J7.76
G02 	X0.16 	Y7.84 	F40 	E0.02463 	I7.84 	J0.00
G02 	X8.08 	Y-0.08 	F40 	E0.02488 	I0.00 	J-7.92
G02 	X0.08 	Y-8.08 	F40 	E0.02513 	I-8.00 	J0.00
G02 	X-8.00 	Y0.00 	F40 	E0.02538 	I0.00 	J8.08
G02 	X0.16 	Y8.16 	F40 	E0.02564 	I8.16 	J0.00
G02 	X8.40 	Y-0.08 	F40 	E0.02589 	I0.00 	J-8.24
G02 	X0.08 	Y-8.40 	F40 	E0.02614 	I-8.32 	J0.00
G02 	X-8.32 	Y0.00 	F40 	E0.02639 	I0.00 	J8.40
G02 	X0.16 	Y8.48 	F40 	E0.02664 	I8.48 	J0.00
G02 	X8.72 	Y-0.08 	F40 	E0.02689 	I0.00 	J-8.56
G02 	X0.08 	Y-8.72 	F40 	E0.02714 	I-8.64 	J0.00
G02 	X-8.64 	Y0.00 	F40 	E0.02739 	I0.00 	J8.72
G02 	X0.16 	Y8.80 	F40 	E0.02765 	I8.80 	J0.00
G02 	X9.04 	Y-0.08 	F40 	E0.02790 	I0.00 	J-8.88
G02 	X0.08 	Y-9.04 	F40 	E0.02815 	I-8.96 	J0.00
G02 	X-8.96 	Y0.00 	F40 	E0.02840 	I0.00 	J9.04
G02 	X0.16 	Y9.12 	F40 	E0.02865 	I9.12 	J0.00
G02 	X9.36 	Y-0.08 	F40 	E0.02890 	I0.00 	J-9.20
G02 	X0.08 	Y-9.36 	F40 	E0.02915 	I-9.28 	J0.00
G02 	X-9.28 	Y0.00 	F40 	E0.02941 	I0.00 	J9.36
G02 	X0.16 	Y9.44 	F40 	E0.02966 	I9.44 	J0.00
G02 	X9.68 	Y-0.08 	F40 	E0.02991 	I0.00 	J-9.52
G02 	X0.08 	Y-9.68 	F40 	E0.03016 	I-9.60 	J0.00
G02 	X-9.60 	Y0.00 	F40 	E0.03041 	I0.00 	J9.68
G02 	X0.16 	Y9.76 	F40 	E0.03066 	I9.76 	J0.00
G02 	X10.00 	Y-0.08 	F40 	E0.03091 	I0.00 	J-9.84
G02 	X0.08 	Y-10.00 	F40 	E0.03116 	I-9.92 	J0.00
G02 	X-9.92 	Y0.00 	F40 	E0.03142 	I0.00 	J10.00
G02 	X0.16 	Y10.08 	F40 	E0.03167 	I10.08 	J0.00
G02 	X10.32 	Y-0.08 	F40 	E0.03192 	I0.00 	J-10.16
G02 	X0.08 	Y-10.32 	F40 	E0.03217 	I-10.24 	J0.00
G02 	X-10.24 	Y0.00 	F40 	E0.03242 	I0.00 	J10.32

(Raising by 1 layers)
G90 
G01 	Z0.16 	F1000

(Setting position to 0, 0, 0)
G01 	Z5.16 	F1000
G01 	X0.00 	Y0.00 	F1000
G01 	Z0.00 	F1000
(Printing radial pattern of diameter 20.00)
G90 
G01 	Z2.00 	F1000
G01 	X9.84 	Y0.00 	F1000
G01 	Z0.00 	F1000
G01 	X0.00 	Y0.00 	F40 	E0.01968
G01 	Z2.00 	F1000
G01 	X9.84 	Y0.24 	F1000
G01 	Z0.00 	F1000
G01 	X6.68 	Y0.16 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.83 	Y0.48 	F1000
G01 	Z0.00 	F1000
G01 	X3.42 	Y0.17 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.81 	Y0.72 	F1000
G01 	Z0.00 	F1000
G01 	X6.66 	Y0.49 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.79 	Y0.96 	F1000
G01 	Z0.00 	F1000
G01 	X1.78 	Y0.18 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X9.77 	Y1.20 	F1000
G01 	Z0.00 	F1000
G01 	X6.63 	Y0.82 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.73 	Y1.44 	F1000
G01 	Z0.00 	F1000
G01 	X3.38 	Y0.50 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.70 	Y1.68 	F1000
G01 	Z0.00 	F1000
G01 	X6.58 	Y1.14 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.65 	Y1.92 	F1000
G01 	Z0.00 	F1000
G01 	X0.96 	Y0.19 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X9.60 	Y2.16 	F1000
G01 	Z0.00 	F1000
G01 	X6.52 	Y1.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.55 	Y2.39 	F1000
G01 	Z0.00 	F1000
G01 	X3.32 	Y0.83 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.48 	Y2.62 	F1000
G01 	Z0.00 	F1000
G01 	X6.44 	Y1.78 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.42 	Y2.86 	F1000
G01 	Z0.00 	F1000
G01 	X1.72 	Y0.52 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X9.34 	Y3.09 	F1000
G01 	Z0.00 	F1000
G01 	X6.34 	Y2.10 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.26 	Y3.31 	F1000
G01 	Z0.00 	F1000
G01 	X3.22 	Y1.15 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.18 	Y3.54 	F1000
G01 	Z0.00 	F1000
G01 	X6.23 	Y2.40 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.09 	Y3.77 	F1000
G01 	Z0.00 	F1000
G01 	X0.53 	Y0.22 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X9.00 	Y3.99 	F1000
G01 	Z0.00 	F1000
G01 	X6.11 	Y2.71 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.90 	Y4.21 	F1000
G01 	Z0.00 	F1000
G01 	X3.09 	Y1.46 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X8.79 	Y4.42 	F1000
G01 	Z0.00 	F1000
G01 	X5.97 	Y3.00 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.68 	Y4.64 	F1000
G01 	Z0.00 	F1000
G01 	X1.58 	Y0.84 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X8.56 	Y4.85 	F1000
G01 	Z0.00 	F1000
G01 	X5.81 	Y3.29 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.44 	Y5.06 	F1000
G01 	Z0.00 	F1000
G01 	X2.93 	Y1.76 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X8.31 	Y5.26 	F1000
G01 	Z0.00 	F1000
G01 	X5.64 	Y3.57 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.18 	Y5.47 	F1000
G01 	Z0.00 	F1000
G01 	X0.81 	Y0.54 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X8.05 	Y5.67 	F1000
G01 	Z0.00 	F1000
G01 	X5.46 	Y3.85 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X7.90 	Y5.86 	F1000
G01 	Z0.00 	F1000
G01 	X2.75 	Y2.04 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X7.76 	Y6.05 	F1000
G01 	Z0.00 	F1000
G01 	X5.27 	Y4.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X7.61 	Y6.24 	F1000
G01 	Z0.00 	F1000
G01 	X1.39 	Y1.14 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X7.45 	Y6.43 	F1000
G01 	Z0.00 	F1000
G01 	X5.06 	Y4.36 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X7.29 	Y6.61 	F1000
G01 	Z0.00 	F1000
G01 	X2.53 	Y2.30 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X7.13 	Y6.79 	F1000
G01 	Z0.00 	F1000
G01 	X4.84 	Y4.61 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X6.96 	Y6.96 	F1000
G01 	Z0.00 	F1000
G01 	X0.27 	Y0.27 	F40 	E0.01891
G01 	Z2.00 	F1000
G01 	X6.79 	Y7.13 	F1000
G01 	Z0.00 	F1000
G01 	X4.61 	Y4.84 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X6.61 	Y7.29 	F1000
G01 	Z0.00 	F1000
G01 	X2.30 	Y2.53 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X6.43 	Y7.45 	F1000
G01 	Z0.00 	F1000
G01 	X4.36 	Y5.06 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X6.24 	Y7.61 	F1000
G01 	Z0.00 	F1000
G01 	X1.14 	Y1.39 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X6.05 	Y7.76 	F1000
G01 	Z0.00 	F1000
G01 	X4.11 	Y5.27 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X5.86 	Y7.90 	F1000
G01 	Z0.00 	F1000
G01 	X2.04 	Y2.75 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X5.67 	Y8.05 	F1000
G01 	Z0.00 	F1000
G01 	X3.85 	Y5.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X5.47 	Y8.18 	F1000
G01 	Z0.00 	F1000
G01 	X0.54 	Y0.81 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X5.26 	Y8.31 	F1000
G01 	Z0.00 	F1000
G01 	X3.57 	Y5.64 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X5.06 	Y8.44 	F1000
G01 	Z0.00 	F1000
G01 	X1.76 	Y2.93 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X4.85 	Y8.56 	F1000
G01 	Z0.00 	F1000
G01 	X3.29 	Y5.81 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X4.64 	Y8.68 	F1000
G01 	Z0.00 	F1000
G01 	X0.84 	Y1.58 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X4.42 	Y8.79 	F1000
G01 	Z0.00 	F1000
G01 	X3.00 	Y5.97 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X4.21 	Y8.90 	F1000
G01 	Z0.00 	F1000
G01 	X1.46 	Y3.09 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X3.99 	Y9.00 	F1000
G01 	Z0.00 	F1000
G01 	X2.71 	Y6.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X3.77 	Y9.09 	F1000
G01 	Z0.00 	F1000
G01 	X0.22 	Y0.53 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X3.54 	Y9.18 	F1000
G01 	Z0.00 	F1000
G01 	X2.40 	Y6.23 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X3.31 	Y9.26 	F1000
G01 	Z0.00 	F1000
G01 	X1.15 	Y3.22 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X3.09 	Y9.34 	F1000
G01 	Z0.00 	F1000
G01 	X2.10 	Y6.34 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X2.86 	Y9.42 	F1000
G01 	Z0.00 	F1000
G01 	X0.52 	Y1.72 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X2.62 	Y9.48 	F1000
G01 	Z0.00 	F1000
G01 	X1.78 	Y6.44 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X2.39 	Y9.55 	F1000
G01 	Z0.00 	F1000
G01 	X0.83 	Y3.32 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X2.16 	Y9.60 	F1000
G01 	Z0.00 	F1000
G01 	X1.46 	Y6.52 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X1.92 	Y9.65 	F1000
G01 	Z0.00 	F1000
G01 	X0.19 	Y0.96 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X1.68 	Y9.70 	F1000
G01 	Z0.00 	F1000
G01 	X1.14 	Y6.58 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X1.44 	Y9.73 	F1000
G01 	Z0.00 	F1000
G01 	X0.50 	Y3.38 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X1.20 	Y9.77 	F1000
G01 	Z0.00 	F1000
G01 	X0.82 	Y6.63 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X0.96 	Y9.79 	F1000
G01 	Z0.00 	F1000
G01 	X0.18 	Y1.78 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X0.72 	Y9.81 	F1000
G01 	Z0.00 	F1000
G01 	X0.49 	Y6.66 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X0.48 	Y9.83 	F1000
G01 	Z0.00 	F1000
G01 	X0.17 	Y3.42 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X0.24 	Y9.84 	F1000
G01 	Z0.00 	F1000
G01 	X0.16 	Y6.68 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X0.00 	Y9.84 	F1000
G01 	Z0.00 	F1000
G01 	X0.00 	Y0.00 	F40 	E0.01968
G01 	Z2.00 	F1000
G01 	X-0.24 	Y9.84 	F1000
G01 	Z0.00 	F1000
G01 	X-0.16 	Y6.68 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-0.48 	Y9.83 	F1000
G01 	Z0.00 	F1000
G01 	X-0.17 	Y3.42 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-0.72 	Y9.81 	F1000
G01 	Z0.00 	F1000
G01 	X-0.49 	Y6.66 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-0.96 	Y9.79 	F1000
G01 	Z0.00 	F1000
G01 	X-0.18 	Y1.78 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-1.20 	Y9.77 	F1000
G01 	Z0.00 	F1000
G01 	X-0.82 	Y6.63 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-1.44 	Y9.73 	F1000
G01 	Z0.00 	F1000
G01 	X-0.50 	Y3.38 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-1.68 	Y9.70 	F1000
G01 	Z0.00 	F1000
G01 	X-1.14 	Y6.58 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-1.92 	Y9.65 	F1000
G01 	Z0.00 	F1000
G01 	X-0.19 	Y0.96 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-2.16 	Y9.60 	F1000
G01 	Z0.00 	F1000
G01 	X-1.46 	Y6.52 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-2.39 	Y9.55 	F1000
G01 	Z0.00 	F1000
G01 	X-0.83 	Y3.32 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-2.62 	Y9.48 	F1000
G01 	Z0.00 	F1000
G01 	X-1.78 	Y6.44 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-2.86 	Y9.42 	F1000
G01 	Z0.00 	F1000
G01 	X-0.52 	Y1.72 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-3.09 	Y9.34 	F1000
G01 	Z0.00 	F1000
G01 	X-2.10 	Y6.34 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-3.31 	Y9.26 	F1000
G01 	Z0.00 	F1000
G01 	X-1.15 	Y3.22 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-3.54 	Y9.18 	F1000
G01 	Z0.00 	F1000
G01 	X-2.40 	Y6.23 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-3.77 	Y9.09 	F1000
G01 	Z0.00 	F1000
G01 	X-0.22 	Y0.53 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X-3.99 	Y9.00 	F1000
G01 	Z0.00 	F1000
G01 	X-2.71 	Y6.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-4.21 	Y8.90 	F1000
G01 	Z0.00 	F1000
G01 	X-1.46 	Y3.09 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-4.42 	Y8.79 	F1000
G01 	Z0.00 	F1000
G01 	X-3.00 	Y5.97 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-4.64 	Y8.68 	F1000
G01 	Z0.00 	F1000
G01 	X-0.84 	Y1.58 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-4.85 	Y8.56 	F1000
G01 	Z0.00 	F1000
G01 	X-3.29 	Y5.81 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-5.06 	Y8.44 	F1000
G01 	Z0.00 	F1000
G01 	X-1.76 	Y2.93 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-5.26 	Y8.31 	F1000
G01 	Z0.00 	F1000
G01 	X-3.57 	Y5.64 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-5.47 	Y8.18 	F1000
G01 	Z0.00 	F1000
G01 	X-0.54 	Y0.81 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-5.67 	Y8.05 	F1000
G01 	Z0.00 	F1000
G01 	X-3.85 	Y5.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-5.86 	Y7.90 	F1000
G01 	Z0.00 	F1000
G01 	X-2.04 	Y2.75 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-6.05 	Y7.76 	F1000
G01 	Z0.00 	F1000
G01 	X-4.11 	Y5.27 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-6.24 	Y7.61 	F1000
G01 	Z0.00 	F1000
G01 	X-1.14 	Y1.39 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-6.43 	Y7.45 	F1000
G01 	Z0.00 	F1000
G01 	X-4.36 	Y5.06 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-6.61 	Y7.29 	F1000
G01 	Z0.00 	F1000
G01 	X-2.30 	Y2.53 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-6.79 	Y7.13 	F1000
G01 	Z0.00 	F1000
G01 	X-4.61 	Y4.84 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-6.96 	Y6.96 	F1000
G01 	Z0.00 	F1000
G01 	X-0.27 	Y0.27 	F40 	E0.01891
G01 	Z2.00 	F1000
G01 	X-7.13 	Y6.79 	F1000
G01 	Z0.00 	F1000
G01 	X-4.84 	Y4.61 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-7.29 	Y6.61 	F1000
G01 	Z0.00 	F1000
G01 	X-2.53 	Y2.30 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-7.45 	Y6.43 	F1000
G01 	Z0.00 	F1000
G01 	X-5.06 	Y4.36 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-7.61 	Y6.24 	F1000
G01 	Z0.00 	F1000
G01 	X-1.39 	Y1.14 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-7.76 	Y6.05 	F1000
G01 	Z0.00 	F1000
G01 	X-5.27 	Y4.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-7.90 	Y5.86 	F1000
G01 	Z0.00 	F1000
G01 	X-2.75 	Y2.04 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-8.05 	Y5.67 	F1000
G01 	Z0.00 	F1000
G01 	X-5.46 	Y3.85 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.18 	Y5.47 	F1000
G01 	Z0.00 	F1000
G01 	X-0.81 	Y0.54 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-8.31 	Y5.26 	F1000
G01 	Z0.00 	F1000
G01 	X-5.64 	Y3.57 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.44 	Y5.06 	F1000
G01 	Z0.00 	F1000
G01 	X-2.93 	Y1.76 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-8.56 	Y4.85 	F1000
G01 	Z0.00 	F1000
G01 	X-5.81 	Y3.29 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.68 	Y4.64 	F1000
G01 	Z0.00 	F1000
G01 	X-1.58 	Y0.84 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-8.79 	Y4.42 	F1000
G01 	Z0.00 	F1000
G01 	X-5.97 	Y3.00 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.90 	Y4.21 	F1000
G01 	Z0.00 	F1000
G01 	X-3.09 	Y1.46 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.00 	Y3.99 	F1000
G01 	Z0.00 	F1000
G01 	X-6.11 	Y2.71 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.09 	Y3.77 	F1000
G01 	Z0.00 	F1000
G01 	X-0.53 	Y0.22 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X-9.18 	Y3.54 	F1000
G01 	Z0.00 	F1000
G01 	X-6.23 	Y2.40 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.26 	Y3.31 	F1000
G01 	Z0.00 	F1000
G01 	X-3.22 	Y1.15 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.34 	Y3.09 	F1000
G01 	Z0.00 	F1000
G01 	X-6.34 	Y2.10 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.42 	Y2.86 	F1000
G01 	Z0.00 	F1000
G01 	X-1.72 	Y0.52 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-9.48 	Y2.62 	F1000
G01 	Z0.00 	F1000
G01 	X-6.44 	Y1.78 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.55 	Y2.39 	F1000
G01 	Z0.00 	F1000
G01 	X-3.32 	Y0.83 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.60 	Y2.16 	F1000
G01 	Z0.00 	F1000
G01 	X-6.52 	Y1.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.65 	Y1.92 	F1000
G01 	Z0.00 	F1000
G01 	X-0.96 	Y0.19 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-9.70 	Y1.68 	F1000
G01 	Z0.00 	F1000
G01 	X-6.58 	Y1.14 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.73 	Y1.44 	F1000
G01 	Z0.00 	F1000
G01 	X-3.38 	Y0.50 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.77 	Y1.20 	F1000
G01 	Z0.00 	F1000
G01 	X-6.63 	Y0.82 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.79 	Y0.96 	F1000
G01 	Z0.00 	F1000
G01 	X-1.78 	Y0.18 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-9.81 	Y0.72 	F1000
G01 	Z0.00 	F1000
G01 	X-6.66 	Y0.49 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.83 	Y0.48 	F1000
G01 	Z0.00 	F1000
G01 	X-3.42 	Y0.17 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.84 	Y0.24 	F1000
G01 	Z0.00 	F1000
G01 	X-6.68 	Y0.16 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.84 	Y0.00 	F1000
G01 	Z0.00 	F1000
G01 	X0.00 	Y0.00 	F40 	E0.01968
G01 	Z2.00 	F1000
G01 	X-9.84 	Y-0.24 	F1000
G01 	Z0.00 	F1000
G01 	X-6.68 	Y-0.16 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.83 	Y-0.48 	F1000
G01 	Z0.00 	F1000
G01 	X-3.42 	Y-0.17 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.81 	Y-0.72 	F1000
G01 	Z0.00 	F1000
G01 	X-6.66 	Y-0.49 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.79 	Y-0.96 	F1000
G01 	Z0.00 	F1000
G01 	X-1.78 	Y-0.18 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-9.77 	Y-1.20 	F1000
G01 	Z0.00 	F1000
G01 	X-6.63 	Y-0.82 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.73 	Y-1.44 	F1000
G01 	Z0.00 	F1000
G01 	X-3.38 	Y-0.50 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.70 	Y-1.68 	F1000
G01 	Z0.00 	F1000
G01 	X-6.58 	Y-1.14 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.65 	Y-1.92 	F1000
G01 	Z0.00 	F1000
G01 	X-0.96 	Y-0.19 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-9.60 	Y-2.16 	F1000
G01 	Z0.00 	F1000
G01 	X-6.52 	Y-1.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.55 	Y-2.39 	F1000
G01 	Z0.00 	F1000
G01 	X-3.32 	Y-0.83 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.48 	Y-2.62 	F1000
G01 	Z0.00 	F1000
G01 	X-6.44 	Y-1.78 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.42 	Y-2.86 	F1000
G01 	Z0.00 	F1000
G01 	X-1.72 	Y-0.52 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-9.34 	Y-3.09 	F1000
G01 	Z0.00 	F1000
G01 	X-6.34 	Y-2.10 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.26 	Y-3.31 	F1000
G01 	Z0.00 	F1000
G01 	X-3.22 	Y-1.15 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-9.18 	Y-3.54 	F1000
G01 	Z0.00 	F1000
G01 	X-6.23 	Y-2.40 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-9.09 	Y-3.77 	F1000
G01 	Z0.00 	F1000
G01 	X-0.53 	Y-0.22 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X-9.00 	Y-3.99 	F1000
G01 	Z0.00 	F1000
G01 	X-6.11 	Y-2.71 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.90 	Y-4.21 	F1000
G01 	Z0.00 	F1000
G01 	X-3.09 	Y-1.46 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-8.79 	Y-4.42 	F1000
G01 	Z0.00 	F1000
G01 	X-5.97 	Y-3.00 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.68 	Y-4.64 	F1000
G01 	Z0.00 	F1000
G01 	X-1.58 	Y-0.84 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-8.56 	Y-4.85 	F1000
G01 	Z0.00 	F1000
G01 	X-5.81 	Y-3.29 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.44 	Y-5.06 	F1000
G01 	Z0.00 	F1000
G01 	X-2.93 	Y-1.76 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-8.31 	Y-5.26 	F1000
G01 	Z0.00 	F1000
G01 	X-5.64 	Y-3.57 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-8.18 	Y-5.47 	F1000
G01 	Z0.00 	F1000
G01 	X-0.81 	Y-0.54 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-8.05 	Y-5.67 	F1000
G01 	Z0.00 	F1000
G01 	X-5.46 	Y-3.85 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-7.90 	Y-5.86 	F1000
G01 	Z0.00 	F1000
G01 	X-2.75 	Y-2.04 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-7.76 	Y-6.05 	F1000
G01 	Z0.00 	F1000
G01 	X-5.27 	Y-4.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-7.61 	Y-6.24 	F1000
G01 	Z0.00 	F1000
G01 	X-1.39 	Y-1.14 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-7.45 	Y-6.43 	F1000
G01 	Z0.00 	F1000
G01 	X-5.06 	Y-4.36 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-7.29 	Y-6.61 	F1000
G01 	Z0.00 	F1000
G01 	X-2.53 	Y-2.30 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-7.13 	Y-6.79 	F1000
G01 	Z0.00 	F1000
G01 	X-4.84 	Y-4.61 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-6.96 	Y-6.96 	F1000
G01 	Z0.00 	F1000
G01 	X-0.27 	Y-0.27 	F40 	E0.01891
G01 	Z2.00 	F1000
G01 	X-6.79 	Y-7.13 	F1000
G01 	Z0.00 	F1000
G01 	X-4.61 	Y-4.84 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-6.61 	Y-7.29 	F1000
G01 	Z0.00 	F1000
G01 	X-2.30 	Y-2.53 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-6.43 	Y-7.45 	F1000
G01 	Z0.00 	F1000
G01 	X-4.36 	Y-5.06 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-6.24 	Y-7.61 	F1000
G01 	Z0.00 	F1000
G01 	X-1.14 	Y-1.39 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-6.05 	Y-7.76 	F1000
G01 	Z0.00 	F1000
G01 	X-4.11 	Y-5.27 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-5.86 	Y-7.90 	F1000
G01 	Z0.00 	F1000
G01 	X-2.04 	Y-2.75 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-5.67 	Y-8.05 	F1000
G01 	Z0.00 	F1000
G01 	X-3.85 	Y-5.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-5.47 	Y-8.18 	F1000
G01 	Z0.00 	F1000
G01 	X-0.54 	Y-0.81 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-5.26 	Y-8.31 	F1000
G01 	Z0.00 	F1000
G01 	X-3.57 	Y-5.64 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-5.06 	Y-8.44 	F1000
G01 	Z0.00 	F1000
G01 	X-1.76 	Y-2.93 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-4.85 	Y-8.56 	F1000
G01 	Z0.00 	F1000
G01 	X-3.29 	Y-5.81 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-4.64 	Y-8.68 	F1000
G01 	Z0.00 	F1000
G01 	X-0.84 	Y-1.58 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-4.42 	Y-8.79 	F1000
G01 	Z0.00 	F1000
G01 	X-3.00 	Y-5.97 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-4.21 	Y-8.90 	F1000
G01 	Z0.00 	F1000
G01 	X-1.46 	Y-3.09 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-3.99 	Y-9.00 	F1000
G01 	Z0.00 	F1000
G01 	X-2.71 	Y-6.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-3.77 	Y-9.09 	F1000
G01 	Z0.00 	F1000
G01 	X-0.22 	Y-0.53 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X-3.54 	Y-9.18 	F1000
G01 	Z0.00 	F1000
G01 	X-2.40 	Y-6.23 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-3.31 	Y-9.26 	F1000
G01 	Z0.00 	F1000
G01 	X-1.15 	Y-3.22 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-3.09 	Y-9.34 	F1000
G01 	Z0.00 	F1000
G01 	X-2.10 	Y-6.34 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-2.86 	Y-9.42 	F1000
G01 	Z0.00 	F1000
G01 	X-0.52 	Y-1.72 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-2.62 	Y-9.48 	F1000
G01 	Z0.00 	F1000
G01 	X-1.78 	Y-6.44 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-2.39 	Y-9.55 	F1000
G01 	Z0.00 	F1000
G01 	X-0.83 	Y-3.32 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-2.16 	Y-9.60 	F1000
G01 	Z0.00 	F1000
G01 	X-1.46 	Y-6.52 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-1.92 	Y-9.65 	F1000
G01 	Z0.00 	F1000
G01 	X-0.19 	Y-0.96 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X-1.68 	Y-9.70 	F1000
G01 	Z0.00 	F1000
G01 	X-1.14 	Y-6.58 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-1.44 	Y-9.73 	F1000
G01 	Z0.00 	F1000
G01 	X-0.50 	Y-3.38 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-1.20 	Y-9.77 	F1000
G01 	Z0.00 	F1000
G01 	X-0.82 	Y-6.63 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-0.96 	Y-9.79 	F1000
G01 	Z0.00 	F1000
G01 	X-0.18 	Y-1.78 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X-0.72 	Y-9.81 	F1000
G01 	Z0.00 	F1000
G01 	X-0.49 	Y-6.66 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X-0.48 	Y-9.83 	F1000
G01 	Z0.00 	F1000
G01 	X-0.17 	Y-3.42 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X-0.24 	Y-9.84 	F1000
G01 	Z0.00 	F1000
G01 	X-0.16 	Y-6.68 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X0.00 	Y-9.84 	F1000
G01 	Z0.00 	F1000
G01 	X0.00 	Y0.00 	F40 	E0.01968
G01 	Z2.00 	F1000
G01 	X0.24 	Y-9.84 	F1000
G01 	Z0.00 	F1000
G01 	X0.16 	Y-6.68 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X0.48 	Y-9.83 	F1000
G01 	Z0.00 	F1000
G01 	X0.17 	Y-3.42 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X0.72 	Y-9.81 	F1000
G01 	Z0.00 	F1000
G01 	X0.49 	Y-6.66 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X0.96 	Y-9.79 	F1000
G01 	Z0.00 	F1000
G01 	X0.18 	Y-1.78 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X1.20 	Y-9.77 	F1000
G01 	Z0.00 	F1000
G01 	X0.82 	Y-6.63 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X1.44 	Y-9.73 	F1000
G01 	Z0.00 	F1000
G01 	X0.50 	Y-3.38 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X1.68 	Y-9.70 	F1000
G01 	Z0.00 	F1000
G01 	X1.14 	Y-6.58 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X1.92 	Y-9.65 	F1000
G01 	Z0.00 	F1000
G01 	X0.19 	Y-0.96 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X2.16 	Y-9.60 	F1000
G01 	Z0.00 	F1000
G01 	X1.46 	Y-6.52 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X2.39 	Y-9.55 	F1000
G01 	Z0.00 	F1000
G01 	X0.83 	Y-3.32 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X2.62 	Y-9.48 	F1000
G01 	Z0.00 	F1000
G01 	X1.78 	Y-6.44 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X2.86 	Y-9.42 	F1000
G01 	Z0.00 	F1000
G01 	X0.52 	Y-1.72 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X3.09 	Y-9.34 	F1000
G01 	Z0.00 	F1000
G01 	X2.10 	Y-6.34 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X3.31 	Y-9.26 	F1000
G01 	Z0.00 	F1000
G01 	X1.15 	Y-3.22 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X3.54 	Y-9.18 	F1000
G01 	Z0.00 	F1000
G01 	X2.40 	Y-6.23 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X3.77 	Y-9.09 	F1000
G01 	Z0.00 	F1000
G01 	X0.22 	Y-0.53 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X3.99 	Y-9.00 	F1000
G01 	Z0.00 	F1000
G01 	X2.71 	Y-6.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X4.21 	Y-8.90 	F1000
G01 	Z0.00 	F1000
G01 	X1.46 	Y-3.09 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X4.42 	Y-8.79 	F1000
G01 	Z0.00 	F1000
G01 	X3.00 	Y-5.97 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X4.64 	Y-8.68 	F1000
G01 	Z0.00 	F1000
G01 	X0.84 	Y-1.58 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X4.85 	Y-8.56 	F1000
G01 	Z0.00 	F1000
G01 	X3.29 	Y-5.81 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X5.06 	Y-8.44 	F1000
G01 	Z0.00 	F1000
G01 	X1.76 	Y-2.93 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X5.26 	Y-8.31 	F1000
G01 	Z0.00 	F1000
G01 	X3.57 	Y-5.64 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X5.47 	Y-8.18 	F1000
G01 	Z0.00 	F1000
G01 	X0.54 	Y-0.81 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X5.67 	Y-8.05 	F1000
G01 	Z0.00 	F1000
G01 	X3.85 	Y-5.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X5.86 	Y-7.90 	F1000
G01 	Z0.00 	F1000
G01 	X2.04 	Y-2.75 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X6.05 	Y-7.76 	F1000
G01 	Z0.00 	F1000
G01 	X4.11 	Y-5.27 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X6.24 	Y-7.61 	F1000
G01 	Z0.00 	F1000
G01 	X1.14 	Y-1.39 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X6.43 	Y-7.45 	F1000
G01 	Z0.00 	F1000
G01 	X4.36 	Y-5.06 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X6.61 	Y-7.29 	F1000
G01 	Z0.00 	F1000
G01 	X2.30 	Y-2.53 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X6.79 	Y-7.13 	F1000
G01 	Z0.00 	F1000
G01 	X4.61 	Y-4.84 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X6.96 	Y-6.96 	F1000
G01 	Z0.00 	F1000
G01 	X0.27 	Y-0.27 	F40 	E0.01891
G01 	Z2.00 	F1000
G01 	X7.13 	Y-6.79 	F1000
G01 	Z0.00 	F1000
G01 	X4.84 	Y-4.61 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X7.29 	Y-6.61 	F1000
G01 	Z0.00 	F1000
G01 	X2.53 	Y-2.30 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X7.45 	Y-6.43 	F1000
G01 	Z0.00 	F1000
G01 	X5.06 	Y-4.36 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X7.61 	Y-6.24 	F1000
G01 	Z0.00 	F1000
G01 	X1.39 	Y-1.14 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X7.76 	Y-6.05 	F1000
G01 	Z0.00 	F1000
G01 	X5.27 	Y-4.11 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X7.90 	Y-5.86 	F1000
G01 	Z0.00 	F1000
G01 	X2.75 	Y-2.04 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X8.05 	Y-5.67 	F1000
G01 	Z0.00 	F1000
G01 	X5.46 	Y-3.85 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.18 	Y-5.47 	F1000
G01 	Z0.00 	F1000
G01 	X0.81 	Y-0.54 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X8.31 	Y-5.26 	F1000
G01 	Z0.00 	F1000
G01 	X5.64 	Y-3.57 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.44 	Y-5.06 	F1000
G01 	Z0.00 	F1000
G01 	X2.93 	Y-1.76 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X8.56 	Y-4.85 	F1000
G01 	Z0.00 	F1000
G01 	X5.81 	Y-3.29 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.68 	Y-4.64 	F1000
G01 	Z0.00 	F1000
G01 	X1.58 	Y-0.84 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X8.79 	Y-4.42 	F1000
G01 	Z0.00 	F1000
G01 	X5.97 	Y-3.00 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X8.90 	Y-4.21 	F1000
G01 	Z0.00 	F1000
G01 	X3.09 	Y-1.46 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.00 	Y-3.99 	F1000
G01 	Z0.00 	F1000
G01 	X6.11 	Y-2.71 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.09 	Y-3.77 	F1000
G01 	Z0.00 	F1000
G01 	X0.53 	Y-0.22 	F40 	E0.01852
G01 	Z2.00 	F1000
G01 	X9.18 	Y-3.54 	F1000
G01 	Z0.00 	F1000
G01 	X6.23 	Y-2.40 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.26 	Y-3.31 	F1000
G01 	Z0.00 	F1000
G01 	X3.22 	Y-1.15 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.34 	Y-3.09 	F1000
G01 	Z0.00 	F1000
G01 	X6.34 	Y-2.10 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.42 	Y-2.86 	F1000
G01 	Z0.00 	F1000
G01 	X1.72 	Y-0.52 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X9.48 	Y-2.62 	F1000
G01 	Z0.00 	F1000
G01 	X6.44 	Y-1.78 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.55 	Y-2.39 	F1000
G01 	Z0.00 	F1000
G01 	X3.32 	Y-0.83 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.60 	Y-2.16 	F1000
G01 	Z0.00 	F1000
G01 	X6.52 	Y-1.46 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.65 	Y-1.92 	F1000
G01 	Z0.00 	F1000
G01 	X0.96 	Y-0.19 	F40 	E0.01772
G01 	Z2.00 	F1000
G01 	X9.70 	Y-1.68 	F1000
G01 	Z0.00 	F1000
G01 	X6.58 	Y-1.14 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.73 	Y-1.44 	F1000
G01 	Z0.00 	F1000
G01 	X3.38 	Y-0.50 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.77 	Y-1.20 	F1000
G01 	Z0.00 	F1000
G01 	X6.63 	Y-0.82 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.79 	Y-0.96 	F1000
G01 	Z0.00 	F1000
G01 	X1.78 	Y-0.18 	F40 	E0.01610
G01 	Z2.00 	F1000
G01 	X9.81 	Y-0.72 	F1000
G01 	Z0.00 	F1000
G01 	X6.66 	Y-0.49 	F40 	E0.00632
G01 	Z2.00 	F1000
G01 	X9.83 	Y-0.48 	F1000
G01 	Z0.00 	F1000
G01 	X3.42 	Y-0.17 	F40 	E0.01284
G01 	Z2.00 	F1000
G01 	X9.84 	Y-0.24 	F1000
G01 	Z0.00 	F1000
G01 	X6.68 	Y-0.16 	F40 	E0.00632
G01 	Z2.00 	F1000

(Closing)
G01 	X0.00 	Y-20.00 	Z20.00 	F1000
M104 S0