! sample data file
! 
! -------------
! | n         |
! | x1  y1    |
! | x2  y2    |
! | ... ...   |
! | xn  yn    |
! -------------
! 
program regression
    implicit none
    integer n ! number of points
    integer i ! a counter
    real x(100), y(100) ! arrays to hold the points
    real sumx, sumy, sumxy, sumxx
    real m,c
    real xbar, ybar
    sumx=0.0; sumy=0.0; sumxy=0.0; sumxx=0.0
    open(10,file="points.dat") ! open the data file; attach to unit 10
    read(10,*) n
    ! read the rest of the points, one  per  line and add to sums
    do i=1,n
        read(10,*) x(i),y(i)
        sumx=sumx+x(i)
        sumy=sumy+y(i)
        sumxy=sumxy+x(i)*y(i)
        sumxx=sumxx+x(i)*x(i)
    end do
    close(10) ! finished with the data file
    !calculate the best-fit stright line
    xbar=sumx/n
    ybar=sumy/n
    m=(sumxy/n-xbar*ybar)/(sumxx/n-xbar**2)
    c=ybar-m*xbar
    print*, "Slope= ",m
    print*,"Intercept= ",c
    print "(3(1x,a10))", "x", "y", "mx+c"
    do i=1,n
        print "(3(1x,es10.3))", x(i), y(i),m*x(i)+c
    end do
end program regression