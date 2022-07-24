C Reads the number of apples that can be packed in a carton
C and the number of apples that need to be packed.
C Prints the number of cartons filled by apples and the
C number of left over apples.
      PROGRAM APPLES
        PRINT *,'input the number of apples per box' 
        PRINT *, 'and the total number of apples'
        READ *,NBOX,NAPPLS
        N = NAPPLS/NBOX
        NLEFT = NAPPLS-N*NBOX
        PRINT *,N,' full cartons'
        PRINT *,NLEFT,' apples left over'
      END
