LET denom = 1
LET mult = 1
LET infinipi=0
LET itoffset=0
@start:
LET Z$="more "
IF itoffset=0 THEN GOTO @nomore

INPUT "How many more iterations?";iterations
GO TO @iterate
@nomore:
INPUT "How many iterations?";iterations
@iterate:
FOR I=1 TO iterations
LET infinipi=infinipi + mult * 1/denom
LET denom = denom + 2
LET mult = mult * -1
LET p$ = (STR$(infinipi * 4)+"0000000000")(1 TO 10)
PRINT AT 2,0;p$;"    (";itoffset+I;")"
NEXT I
LET itoffset=itoffset+iterations
INPUT "Continue? (Y/N)";m$
IF m$="Y" or m$="y" THEN GO TO @start
STOP