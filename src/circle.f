C prints points of a circle
	PROGRAM CIRCLE
      REAL R
      INTEGER I, NP
      PARAMETER ( NP = 628 )
      WRITE(6,410) '#please enter radius length'
      READ(*,*) R
      DO 10, I=0, NP
        WRITE(*,400) R*COS(REAL(I/100.0)), R*SIN(REAL(I/100.0))
10	  CONTINUE
400	  FORMAT(F8.2,F8.2)
410	  FORMAT(A)
	END
