C a set of exam marks is provided together with a code (0 = male, 1 = female)
C the data is termined by a record containing a negative code
C it is required to calculate the average mark for the class
C and also the average mark for the boys and girls separately
C 1 Initialise sums for marks and pupils
C 2 repeat the following
C    2.1 Read a mark and a code
C    2.2 If code is negative then exit
C    2.3 Update sum of marks
C    2.4 If code is male (=0) then
C        2.4.1 Update sum of boy's marks
C        2.4.2 Add 1 to count of boys
C 3 Calculate number of girls and their total mark
C 4 Calculate and print required averages
      PROGRAM PLUSEX
      INTEGER MARKS,MARKSB,NBOYS,NGIRLS,MARKSG,ISEX
      MARKS = 0
      MARKSB = 0
      NBOYS = 0
      DO 10, I=1,10
        PRINT *,'READING MARK AND SEX CODE'
        READ *,MARK,ISEX
        IF (ISEX.LT.0) GOTO 20
        MARKS = MARKS + MARK
        IF (ISEX.EQ.0) THEN
          MARKSB = MARKSB+MARK
          NBOYS = NBOYS +1
        ENDIF
10    CONTINUE
20    N = I-1
      MARKSG = MARKS - MARKSB
      NGIRLS = N - NBOYS
      IF (N.GT.0) THEN
        PRINT *,'AVERAGE MARK IS',REAL(MARKS)/N
        IF (NBOYS.GT.0) THEN
          PRINT *,'AVERAGE BOYS MARK IS',REAL(MARKSB)/NBOYS
        ELSE
          PRINT *,'THERE ARE NO BOYS IN THE CLASS'
        ENDIF
        IF (NGIRLS.GT.0) THEN
          PRINT *,'AVERAGE GIRLS MARK IS',REAL(MARKSG)/NGIRLS
        ELSE
          PRINT *,'THERE ARE NO GIRLS IN THE CLASS'
        ENDIF
      ELSE
        PRINT *,'THERE ARE NO MARKS!'
      ENDIF
      END
