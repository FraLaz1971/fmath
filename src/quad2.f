C repeat computing until a=b=c=0
      PROGRAM QUAD2
      real a,b,c,d,s,x1,x2,x
C E IS A VERY SMALL NUMBER BUT GREATER THAN LIKELY
C ROUNDING ERRORS
      print *, '************************************************'
      print *, '* this program calculates roots of'
      print *, '* quadratic equations given coefficients a, b, c'
      print *, '* it stops when a=b=c=0'
      print *, '************************************************'
      E = 1E-9
1     print *, 'enter coefficients a, b, c'
      print *, '0,0,0 to stop'
      read *,a,b,c
      if (a.eq.0 .and. b.eq.0 .and. c.eq.0) goto 2
      s = b**2-4*a*c
      print *, 'delta = ',s
      if (s.gt.e) then
        d = sqrt(s)
        x1 = (-b+d)/(2*a)
        x2 = (-b-d)/(2*a)
        print *,a,'x**2+',b,'x +',c,' = 0'
        print *, 'has roots',x1,' and',x2
      else if (s.gt.-E) then
        x = -b/(2*a)
        print *,a,'x**2+',b,'x +',c,' = 0 has roots',x,' and',x
      else
        print *,a,'x**2+',b,'x +',c,' = 0 has no roots'
      endif
      goto 1
2     continue
      print *, '***************************'
      print *, '*** program reached end ***'
      print *, '***************************'
      stop
      END
