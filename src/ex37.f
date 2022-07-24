      program ex37
        INTEGER I,DIM
        REAL NUMS(10),MYSUM,MYMAX,MYMIN
        DIM = 10
        MYSUM = 0
        MYMAX = 0
        MYMIN = 10000
        PRINT *,'PLEASE INPUT', DIM ,'NUMBERS'
        DO 100, I=1, DIM
            READ *,NUMS(I)
            MYSUM = MYSUM + NUMS(I)
            IF (NUMS(I).GT.MYMAX) THEN
                MYMAX = NUMS(I)
            ENDIF
            IF (NUMS(I).LT.MYMIN) THEN
                MYMIN = NUMS(I)
            ENDIF
100     CONTINUE
        PRINT *, 'AVERAGE IS',MYSUM/10
        PRINT *, 'LARGEST IS',MYMAX
        PRINT *, 'SMALLEST IS',MYMIN
      end
