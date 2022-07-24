C prints a table of squares, cubes,square roots
C and cube roots of whole numbers from 1 to 100
      PROGRAM NEWTAB
      PRINT *, '         n    square(n)   cube(n)   sqrt(n)   cubert(n)'
      DO 10,I=1,100
        print *, I, I**2, I**3, SQRT(real(I)), I**(1.0/3.0) 
10    CONTINUE
      END
