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
    real, allocatable :: x(:), y(:) ! arrays to hold the points
    real m,c
    real xbar, ybar
    open(10,file="points.dat") ! open the data file; attach to unit 10
    read(10,*) n
    allocate(x(n), y(n))
    read(10,*) (x(i),y(i), i = 1, n)
    close(10) ! finished with the data file
    !calculate the best-fit stright line
    xbar=sum(x)/n
    ybar=sum(y)/n
    m=(sum(x*y)/n-xbar*ybar)/(sum(x*x)/n-xbar**2)
    c=ybar-m*xbar
    print*, "Slope= ",m
    print*,"Intercept= ",c
    print "(3(1x,a10))", "x", "y", "mx+c"
    print "(3(1x,es10.3))", (x(i), y(i),m*x(i)+c, i= 1, n)
    deallocate(x,y)
end program regression