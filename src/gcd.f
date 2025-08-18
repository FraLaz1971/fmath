C The Euclidean algorithm is a method for efficiently finding
C the greatest common divisor (GCD) of two integers.
C 1)Start with two integers, a and b, where a is greater than or equal to b.
C 2)Divide a by b and find the remainder, r.
C 3)If r is 0, then b is the GCD.
C 4)If r is not 0, replace a with b and b with r, then repeat step 2.


        subroutine gcd_iter(value, a, b)
            integer value,a,b,r
C if a is smaller, invert the numbers
                if (a.lt.b) then
                    r=a
                    a=b
                    b=r
                endif
10              r = mod(a, b)
                if (r.eq.0) then
                    value = b
                    return
                else if (r.gt.0) then
                    a = b
                    b = r
                endif
                goto 10
        end

        
        program gcd
            integer res, n1, n2
            print *,'*****************************************'
            print *,'*** computing greatest common divisor ***'
            print *,'*** 	using euclid algorithm 	       ***'
            print *,'***************************************'
            print *, 'please enter the first positive integer number'
            read  *, n1
            print *, 'please enter the second positive',
     +      ' integer number'
            read  *, n2
            call gcd_iter(res,n1,n2)
            print *, 'result:', res
        end 
