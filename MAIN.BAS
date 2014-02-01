DECLARE SUB dline ()
DECLARE SUB dcircle ()
SCREEN 12
RANDOMIZE TIMER
CLS

DO
  LOCATE 12, 12
  COLOR 15
  PRINT "Herzlich Willkommen beim DOS-Tag 2014"
  PLAY "O2 T120 mb L16 CEG>C"
  FOR i = 1 TO 1000 STEP 20
    CALL dcircle
    FOR i2 = 1 TO 9
      CALL dline
    NEXT
  NEXT
  LOCATE 14, 40
  PRINT "Viel Spass!"
  LOCATE 4, 2
LOOP UNTIL INKEY$ = CHR$(27)
SYSTEM

SUB dcircle
c = INT(RND * 15)
x = INT(RND * 640)
y = INT(RND * 480)
r = INT(RND * 40 + 20)
COLOR c
CIRCLE (x, y), r


END SUB

SUB dline
  b = INT(RND * 1120)
  s = INT(RND * 20)
  c = 0
  IF s > 18 THEN c = 1
  LINE (b, 1)-(1, b), c

END SUB

