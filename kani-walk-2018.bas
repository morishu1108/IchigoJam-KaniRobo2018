10 'KANI WALK 2018
20 T=300:F=0:W=0:D=0
30 @LOOP:L=ANA(2):R=ANA(0)
40  IF F=0 GOTO@INIT
50  IF F=1 GOTO@GO
60  IF F=2 GOTO@INPLANET
70 @INIT
80  IF L<T&&R>T A=17:B=34:D=120:F=1
90  IF L>T&&R<T A=34:B=17:D=120:F=1
100  WAIT10:GOTO@LOOP
110 @GO
120  IF W>8 WAIT15:OUT B:WAIT D:F=2
130  IF L<T&&R>T W=0
140  IF L>T&&R<T W=0
150  IF L<T&&R<T WAIT5:OUT A:WAIT15:W=W+1
160  IF L>T&&R>T OUT B:WAIT15
170  OUT18:WAIT5:GOTO@LOOP
180 @INPLANET:W=0
190  IF L<=T&&R<=T WAIT10:GOTO@LOOP
200  OUT0:PWM3,120:WAIT30:PWM3,0
210  OUT A:WAIT30:C=A:A=B:B=C
220  F=1:GOTO@LOOP