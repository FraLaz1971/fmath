C a farmer has a triangular field which he wishes
C to sow with wheat. The program reads the lenghts
C of the three sides of the field in metres
C and the sowing density (in grams per square metre).
C Print the number of 10 kilo bags of wheat he must
C purchase in order to sow the whole field
C area = sqrt(s*(s-a)(s-b)(s-c))
C a,b,c are the triangle sides
C 2s = a+b+c
      program wheat
        real a,b,c,density,s,area,qty
        integer nbags
        print *,'please enter the length'
        print *,'of the 3 field sides (in metres)'
        read *, a, b, c
        print *,'please enter the sowing density'
        print *,'(in grams per square metre)'
        read *, density
        s = 0.5*(a+b+c)
        area = sqrt(s*(s-a)*(s-b)*(s-c))
        qty = density*area
        nbags = (qty+9999)/10000
        print *,'area of field is',area,' square metres'
        print *,nbags,' 10 kilo bags are required'
      end
