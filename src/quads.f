      program quad
C-------------------------------------------
C this is the salford ftn77 version of 
C the quad.f program. The subroutine
C that calls a shell command is different
C from gfortran
C-------------------------------------------
C 1 set e to a very small value
C 2 read coefficients
C 3 calculate delta s=b**2-4ac
C 4 if b**2-4ac>e then
C   4.1 calculate and print two roots (case delta>0)
C   but if also  b**2-4ac>-e then
C   4.2 calculate and print two equal roots
C   otherwise (case delta = 0)
C   4.3 (otherwise, delta<0) print message no real roots
C e is a very small number but greater than
C rounding errors
        real e,s,d,x,x1,x2,a,b,c
        e = 1E-5
        print *,'this program gives the roots'
        print *,'of the quadratic equation'
        print *,'a*x**2+b*x+c=0'
        print *, 'read coefficients a,b,c'
        read *,a,b,c
        s = b**2-4*a*c
        print *,'delta = ', s
        if (s.gt.e) then
        print *,'roots = x1,x2 = (-b+-sqrt((b**2-4*a*c))/(2*a)'
          d=sqrt(s)
          x1 = (-b+d)/(2*a)
          x2 = (-b-d)/(2*a)
        print *,'roots are',x1,x2
        else if (s.gt.-e) then
        print *,'roots = x1 = x2 = -b/(2*a)'
          x = -b/(2*a)
          print *,'roots are',x,x
        else
          print *,'there are no real roots'
        endif
        call gplot(a,b,c)
      end
      subroutine gplot(a,b,c)
        real a,b,c
        integer ifail
        character*8 fname
        character*9 bname
        character*128 cmd
        character*64 parab
        character*16 batch
        write(parab,100)a,b,c
        fname='quad.plt'
        open(11,file=fname)
          write(11,*) parab
        close(11)
        write(cmd,200)fname
        bname='gplot.bat'
        open(11,file=bname)
          write(11,*) cmd
        close(11)
        print *,'executing: ',bname
        call cissue(bname,ifail)
        if(ifail.gt.0) print *,'command not launched'
100   format('plot ',F10.6,'*x**2+',F10.6,'*x+',F10.6)
200   format('gnuplot -p ',A,' &')
      end
