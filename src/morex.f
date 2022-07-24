C n students in a class take m examinations
C program read all marks and prints:
C the average mark obtained by each student
C the average mark for each examination
C the overall average mark
C read the number of examinations and students
C 2 for each examinations
C   2.1 for each student
C     2.1.1 compute the partial sum for student
C     2.1.2 compute the partial sum
C   2.2 compute the partial sum for examination
C 3 print results
      program morex
        integer nstud,nexams,i,j,k
C mkssum is the sum of marks for a given student
C mkexsum is the sum of marks for a given examination
C mkosum is the overall sum of marks
        integer mark,mkssum(100),mkexsum,mkosum
        print *,'enter the number of students in the class (<101)'
        read *,nstud
        do 30,k=1,nstud
            mkssum(k)=0
30      continue
        print *,'enter the number of examinations (<7)'
        read *,nexams
        mkosum = 0
        do 10,i=1,nexams
          mkexsum = 0
          do 20 j=1,nstud
            print *, 'enter the mark for student',j,'exam',i
            read *, mark
            mkosum = mkosum + mark
            mkexsum = mkexsum + mark
            mkssum(j) = mkssum(j)+mark
20        continue
        print *,'the avg mark for exam', i, ' is', real(mkexsum)/nstud
10      continue
        print *,'the overall mark is', real(mkosum)/(nstud*nexams)
        do 40,k=1,nstud
        print *,'the avg mark for student', k, 
     &  ' is', real(mkssum(k))/nexams
40      continue

      end
