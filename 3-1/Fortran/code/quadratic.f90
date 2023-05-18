program roots
    ! Program solves quadratic equations
    ! a**2+bx+c=0
    implicit none
    real a,b,c !Declare Variable
    real discriminant, root1,root2
    print*, "Input a,b,c"
    read*, a,b,c
    discriminant=b**2-4*a*c ! calculate discriminant
    if (discriminant<0.0) then
        print*, "No real roots"
    else
        root1=(-b+sqrt(discriminant))/(2.0*a)
        root2=(-b-sqrt(discriminant))/(2.0*a)
        print*, "Roots are ",root1,root2 ! output
    end if
end program roots