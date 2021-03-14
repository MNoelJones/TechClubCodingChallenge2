1 REM Write a programme that will print the area of a triangle
2 REM The inputs will be:
3 REM  The lengths of two of the sides
4 REM  The angle between the two sides (in degrees)

10 INPUT "Length of first side", a
20 INPUT "Length of second side", b
30 INPUT "Angle between sides given (in degrees)", tdeg
35 LET t = PI*tdeg/180
40 LET AREA = ABS(0.5*a*b*SIN t)
45 CLS
50 LET by = b * SIN(PI-t): LET bx= b * COS(PI-t)
60 GO SUB 200
70 DRAW a,0
80 DRAW bx,by
90 DRAW -(a+bx), -by
100 PRINT AT 0,0;"First side   : ";a
110 PRINT AT 1,0;"Second side  : ";b
120 PRINT AT 3,0;"Angle(deg)   : ";tdeg
130 PRINT AT 4,0;"Area         : ";area
140 INPUT "More? (Y/N)";m$
150 IF m$="Y" OR m$="y" THEN GO TO 10
160 STOP

200 LET xmid=INT(a/2)
210 IF bx>0 THEN LET xmid=INT((a+bx)/2)
220 LET ymid=INT(by/2)
230 LET xstart=127-xmid
240 LET ystart=87-ymid
250 PLOT xstart, ystart
260 RETURN
