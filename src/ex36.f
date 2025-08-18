      PROGRAM EX36
        PRINT *,'read 6 variables and do some computations'
        PRINT *,'the first 3 real, the second 3 integer'
        READ  *,A,B,C,I,J,K
        PRINT *, A+C+B/K
        PRINT *, I+K+J/C
        PRINT *, A+C+J/K
        PRINT *, A+(C+J)/K
      END
