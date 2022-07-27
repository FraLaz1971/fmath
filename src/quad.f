      program quad
C 1 set e to a very small value
C 2 read coefficients
C 3 calculate b**2-4ac
C 4 if b**2-4ac>e then
C   4.1 calculate and print two roots
C   but if  b**2-4ac>-e then
C   4.2 calculate and print two equal roots
C   otherwise
C   4.3 print message no real roots
C e is a very small number but greater than
C rounding errors
        real e,s,d,x,x1,x2
        e = 1E-5
        print *,'this program gives the roots'
        print *,'of the quadratic equation'
        print *,'a*x**2+b*x+c=0'
        print *, 'read coefficients a,b,c'
        read *,a,b,c
        s = b**2-4*a*c
        if (s.gt.e) then
          d=sqrt(s)
          x1 = (-b+d)/(2*a)
          x2 = (-b-d)/(2*a)
          print *,'roots are',x1,x2
        else if (s.gt.-e) then
          x = -b/(2*a)
          print *,'roots are',x,x
        else
          print *,'there are no real roots'
        endif
      end
