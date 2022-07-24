      program ex37
        INTEGER DIM
        REAL A,B
        DIM = 2
        PRINT *,'PLEASE INPUT', DIM ,'NUMBERS'
        READ *,A,B
        PRINT *, 'AVERAGE IS',(A+B)/2
        PRINT *, 'LARGEST IS',MAX(A,B)
        PRINT *, 'SMALLEST IS',MIN(A,B)
      end
