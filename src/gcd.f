        subroutine gcd_iter(value, u, v)
            integer value
            integer u, v
            integer t
    
            do 10, t=u, 100
c       do while( v /= 0 )
c           t = u
                u = v
                v = mod(t, v)
10      continue
            value = abs(u)
        end

        subroutine fact(a)
C a is the number to factorize
            integer a
C b is the number to check if is a factor
            integer b
C q is the quotient
            integer q
C r is the remainder
            integer r
C c is the exponent of the factor
            integer c,i
            parameter ( max = 50 )
            integer factor(max)
            integer expon(max)
            if (a .gt. max) then 
                goto 777
            end if
            WRITE(*,200) 'factorization of ', a
            do 10, b=2,a-1
C                print *, 'factor=',b
                q = a/b
                r = mod(a, b)
C                WRITE(*,100) 'b=',b,' a/b=',q,' r=', r
                if (r .eq. 0) then
                    c=2
30                  if (mod(a,b**c).eq.0) then
                        c = c + 1
                        goto 30
                    end if
                    print *, 'c=', c
                end if
                expon(b-1) = c
                print *, 'factor is', b**(c-1)
                do 40, i=1, max
                    if ((i+1)*expon(i).ge.a) then
                        print *, '(i+1)*expon(i) is', (i+1)*expon(i)
                        goto 666
                    end if
40              continue
10          continue
666     stop
100     FORMAT(A,I4,A,I4,A,I4)
200     FORMAT(A,I4)
777     print *,'fact.777: number too high, a:', a
        print *,'fact.777: max allowed value is',max
        end
        
        program gcd
            integer res, n1, n2
            print *,'***************************************'
            print *,'*** computing least common multiple ***'
            print *,'*** 	using euclid algorithm 	   ***'
            print *,'***************************************'
            print *, 'please enter the first number'
            read  *, n1
            call fact(n1)
c            print *, 'please enter the second number'
c            read  *, n2
c            call fact(n2)
c            print *, 'result:', res
        end 
