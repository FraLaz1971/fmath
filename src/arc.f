C prints points of an arc of circle
C given radius and angle in degrees
	PROGRAM arc
      REAL R, D
      INTEGER I, NP
      PARAMETER ( PI = 3.14159 )
      WRITE(*,410) '#please enter radius length'
      READ(*,*) R
      WRITE(*,410) '#please enter the angle (deg)'
      READ(*,*) D
      NP = INT((D*PI)/1.8)
      DO 10, I=0, NP
          WRITE(*,400) R*COS(REAL(I/100.0)), R*SIN(REAL(I/100.0))
10	  CONTINUE
400	FORMAT(F8.2,F8.2)
410	FORMAT(A)
	END
