C first reads the number of people at an exam
C then read their marks and print the highest
C and lowest marks followed by the average

      PROGRAM EXAMS
        MKSUM = 0
        MAXMK = 0
        MINMK = 100
        PRINT *, 'please enter the number of examinees'
        READ *,N
        DO 10, I=1,N
          PRINT *, 'enter mark n',I
          READ *,MARK 
          MKSUM = MKSUM+MARK 
          MAXMK = MAX(MAXMK,MARK)
          MINMK = MIN(MINMK,MARK)
10      CONTINUE
        AV = REAL(MKSUM)/N
        PRINT *,'HIGHEST MARK IS', MAXMK
        PRINT *,'LOWEST  MARK IS', MINMK
        PRINT *,'AVERAGE MARK IS', AV
      END
