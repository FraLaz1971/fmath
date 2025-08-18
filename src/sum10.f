C this program reads 10 numbers and sum them
       program sum10
        real r,mysum
        integer i
        print *,'This program calculate the sum of 10 real numbers'
        do 100, i=1,10
        print *,'please enter the number n.', i
        read *,r
        mysum = mysum + r
100    continue
        print *,'the sum is',mysum
       end
