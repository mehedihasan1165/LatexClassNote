program friction
    implicit none
    real ksd
    real re
    real x ! 1/sqrt(lambda)
    real xold
    real, parameter :: tolerence = 1.0e-5
    print *, "Input Ks/D and Re"
    read *, ksd, re
    x = 1.0 ! initial guess
    xold = x + 1.0 ! anything different from x
    do while ( abs(x - xold) > tolerence)
        xold = x
        x = -2.0*log10(ksd/3.7+2.51*x/re) ! new value
    end do
    print *, "Friction factor = ", 1.0/(x*x)
end program friction