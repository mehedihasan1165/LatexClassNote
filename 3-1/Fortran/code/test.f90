program test
    implicit none
    integer first,second,temp,n
    print*,"Enter a number"
    read*, n
    first=1
    second=1
    do 
        print*,first
        temp=first+second
        first=second
        second=temp
        if(first>n) exit
    end do
end program test