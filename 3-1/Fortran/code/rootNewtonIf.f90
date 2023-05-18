program newton
    implicit none
    real a
    real x, xold
    real change
    real, parameter :: tolerence=10e-6
    print*, "Enter a number:"
    read*, a
    x=1.0
    do
        xold=x
        x=0.5*(x+a/x)
        print*, x
        change=abs((x-xold)/x)
        if(change<tolerence) exit
    end do
end program newton