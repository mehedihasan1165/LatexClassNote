program nestedLoop
    implicit none
    integer i,j
    do i=10, 100, 10
        do j=1,3
            print*, "i, j = ", i, j
        end do
        print*, "i begins again"
    end do
end program nestedLoop