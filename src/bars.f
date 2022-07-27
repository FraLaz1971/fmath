C The length (L) of a bar of metal at temperature T°C
C is given by the equation
C L=L0+E*T*L0
C where L0 is the length at 0°C and E is the coefficient of expansion
C program produce a set of tables showing the lengths of 10 bars
C at various temperatures if each is exactly 1m long at 20°C
C reading 10 sets of data (one for each bar) consisting of
C the coefficient of expansion and the range of temperatures
      PROGRAM BARS
        INTEGER I,J
        REAL E,TMIN,TMAX,L0
        DO 10,I=1,10
        PRINT *,'READING DATA FOR BAR ',I
        PRINT *,'READING COEFFICIENT OF EXPANSION'
        READ *,E
C 1=L0+E*20*L0 --> 1=L0*(1+20*E) -->
C L0 = 1/(1+20*E)
        L0 = 1/(1+20*E)
        PRINT *,'READING MIN TEMPERATURE'
        READ *,TMIN
        PRINT *,'READING MAX TEMPERATURE'
        READ *,TMAX
        PRINT *,'  TEMPERATURE(°C)   LENGTH(m)'
        DO 20, J=INT(TMIN),INT(TMAX)
            PRINT *,J,L0+E*J*L0
20      CONTINUE
10      CONTINUE
      END
