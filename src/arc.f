C prints points of an arc of circle
C given radius and angle in degrees
	PROGRAM arc
      REAL R
      INTEGER I, NP, D
      PARAMETER ( PI = 3.14159 )
      WRITE(6,410) '#please enter radius length'
      READ(*,*) R
      WRITE(6,410) '#please enter the angle (deg)'
      READ(*,*) D
      NP = INT((D*PI)/1.8)
      DO 10, I=0, NP
          WRITE(*,400) R*cos(REAL(I/100.0)), R*sin(REAL(I/100.0))
10	  CONTINUE
400	FORMAT(F8.2,F8.2)
410	FORMAT(A)
	END
