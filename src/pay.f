C This program calculate the nett pay of a British worker
C who pays 
C  5% of his gross pay towards superannuation 
C 25% of what is left as income tax
C £14.50 fixed for health insurance
      PROGRAM PAY
        REAL GROSS,SUPER,XPAY,TAX,PAYNET
        PRINT *, 'Input gross weekly pay'
        READ *, GROSS
        SUPER = 0.05*GROSS
        XPAY = GROSS-SUPER
        TAX = 0.25*XPAY
        PAYNET = XPAY-TAX-14.5
        PRINT *,'Gross pay:     ',GROSS
        PRINT *,'superannuation:',SUPER
        PRINT *,'Tax:           ',TAX
        PRINT *,'insurance:     ',14.5
        PRINT *,'Nett pay:      ',PAYNET
      END
