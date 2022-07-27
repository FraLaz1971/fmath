C riders at a cycle race are divided in two races
C based upon an initial time trial
C a program reads data for each riders
C consisting of the rider's number and his time
C and prints a list giving the number and the race
C (A or B) to which has been allocated: if his
C time is less than 1 minute 50 s for the trial
C he should be in race A otherwise in race B
C the data will be terminated by a rider with negative time
C 1 Initialise variables
C 2 repeat the following
C    2.1 Read a number and a time in seconds
C    2.2 If time is negative then exit the loop
C    2.3 Print list item    
C 3 end

      PROGRAM CYCLES
        integer num,time
10    print *,'reading number and trial time'
      read *,num,time
      if (time.lt.0) then
        goto 20
      else if ((time.ge.0.).and.(time.lt.110)) then
        print *,num,'A'
      else
        print *,num,'B'
      endif
      goto 10
20    print *,'list end'
      stop
      END
