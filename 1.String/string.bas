@start:
INPUT "Enter a string with some numbers in it: ",S$
#LET S$="0The string with 1 numbers 345 i6789n it-25"
DIM N(20)
LET NUMLISTINDEX=1
LET SEEN=0
LET THISNUM=0
LET T$=S$
FOR I=1 TO LEN S$
	LET C = CODE T$ - 48
	IF (C<0 OR C>9) AND SEEN THEN GO SUB @storenum
	IF (C>=0 AND C<=9) THEN GO SUB @incnum
#   PRINT "I=";I;" C=";C;" T$='";T$;"' THISNUM=";THISNUM
	LET T$ = S$((I+1) TO)
NEXT I
IF SEEN THEN GO SUB @storenum
FOR I = 1 TO NUMLISTINDEX-1
PRINT N(I)
NEXT I
INPUT "Another? (Y/N)",M$
IF M$="Y" OR M$="y" THEN GO TO @start
STOP

@incnum:
LET THISNUM = THISNUM * 10 + C
LET SEEN = 1
RETURN

@storenum:
LET N(NUMLISTINDEX) = THISNUM
LET THISNUM = 0
LET SEEN = 0
LET NUMLISTINDEX = NUMLISTINDEX + 1
RETURN