C a driver stops several times to fill up with petrol
C and put exactly 8 gallons. At the end of the
C journey he fills up the tank until is full
C and notes the total distance travelled in miles
C (with no fraction of miles).
C The program reads: 
C the number of miles travelled
C the number of stops for petrol
C the amount of petrol put in at the journey end
C the program prints the average fuel consumption
C in miles per gallon to the nearest whole number
C round up for 0.5 upwards
C round down for less than 0.5
      PROGRAM FUEL
        print *, 'please input'
        print *, 'the number of miles travelled'
        print *, 'the number of stops for petrol'
        print *, 'the amount of petrol put in at the journey end'
        read *,miles,nstops,topup
        mpg = miles/(8.0*nstops+topup)+0.5
        print *,'average miles per gallon was',mpg
      END
