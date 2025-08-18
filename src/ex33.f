C this program uses implicit type definition
C variables starting with I,J,K,L,M,N are INTEGER
C the variables starting with all the other letters are REAL
C so x1,x2,x3 are REAL
C    n1,n2,n3 are INTEGER
C    a1 is REAL
C    m1 is INTEGER
      program ex33
        x1 = 5
        n1 = 5
        x2 = -9
        n2 = -9
        x3 = 4
        n3 = 4
        a1 = x1*x2/x3
        m1 = n1*n2/n3
        a2 = x2/x3*x1
        m2 = n2/n3*n1
        a3 = x1/x3*x2
        m3 = n1/n3*n2
        print *,a1,a2,a3
        print *,m1,m2,m3
      end
