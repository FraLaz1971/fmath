C this program reads 4 integers and print the difference
C between the sum of the first two and the sum
C of the last two
       program diffsum
        integer r1,r2,r3,r4,sum1,sum2,diff
        print *,'please enter the number n.1'
        read *,r1
        print *,'please enter the number n.2'
        read *,r2
        sum1 = r1 + r2
        print *,'please enter the number n.3'
        read *,r3
        print *,'please enter the number n.4'
        read *,r4
        sum2 = r3 + r4
        diff = sum1 - sum2
        print *,'the difference sum1 - sum2 is',diff
       end
