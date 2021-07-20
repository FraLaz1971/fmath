subroutine gcd_iter(value, u, v)
  integer, intent(out) :: value
  integer, intent(inout) :: u, v
  integer :: t
 
  do while( v /= 0 )
     t = u
     u = v
     v = mod(t, v)
  enddo
  value = abs(u)
end subroutine gcd_iter

program gcd
	integer :: res, n1, n2
	print *,'***************************************'
	print *,'*** computing least common multiple ***'
	print *,'*** 	using euclid algorithm 	   ***'
	print *,'***************************************'
	print *, 'please enter the first number'
	read  *, n1
	print *, 'please enter the second number'
	read  *, n2
	call gcd_iter(res, n1, n2)
	print *, 'result:', res
end program
