C this program read a temperature in celsius degrees
C and gives you its value in fahrenheit degrees
      PROGRAM C2F
      REAL TEMPC, TEMPF
      PRINT *, 'please enter a temperature in celsius degrees'
      READ *, TEMPC
      TEMPF = 9.0*TEMPC/5.0+32.0
      PRINT *, TEMPC, 'C deg are', TEMPF, 'F deg' 
      END
      
C TEMPF = 9.0*TEMPC/5.0+32.0 -->
C 9.0*TEMPC/5.0 = TEMPF - 32
C TEMPC = (TEMPF - 32)*5.0/9.0
