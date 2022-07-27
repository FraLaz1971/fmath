C a set of survey data contains the age and weight of the
C respondents together with a code to indicate their sex
C (0 = male, 1 = female). Program reads the number of people
C in the survey and then calculates the average weight
C of the men between ages 21 and 35 (inclusive)
C 1 Read number of people (N)
C 2 Initialise sums of weights and people to zero
C 3 Repeat N times
C   3.1 Read age,weight and sex code
C   3.2 If male and aged between 21 and 35 then
C        3.2.1 Add weight to sum of weights
C        3.2.2 Add one to sum of people
C 4 Calculate and print the average weight   
      program avwt
C sp is the sum of people
C sw is the sum of weights
      integer n,sp,age,sex,i
      real sw,wt
      print *, 'n. of people in the survey?'
      read *,n
      sw = 0.0
      sp = 0
      do 10,i=1, n
      print *, 'reading age,weight,sex for person',i
        read *,age,wt,sex
        if ((age.ge.21) .and. (age.le.35) .and. (sex.eq.0)) then
            sw = sw + wt
            sp = sp + 1
        endif
10    continue
      if (sp.gt.0) then
        print *,'average weight is',sw/sp
      else
        print *,'there are no men aged between 21 and 35'
      endif
      end
