C program to print a set of multiplication tables
C from 2 times up to 12 times
C 1 repeat for I from 2 to 12
C   1.1 print heading
C   1.2 repeat for j from 1 to 12
C       1.2.1 print I timed J is I*J
      program tables
      do 10, I=2,12
        print *,I, ' times table'
        do 20, J=1,12
            print *,I,' times',J,' is', I*J
20      continue
10    continue
      end
