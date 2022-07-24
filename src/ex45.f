      program ex45
        do 1, i=1,10
          do 2, j=i,i**2
            do 3, k=j+1,i*10
              l = i+j+k
3            continue
2          continue
1       continue
        print *,i,j,k,l
      end
