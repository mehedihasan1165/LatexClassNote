program gradeUsingSelectCase
    implicit none
    integer mark
    character grade
    do
        write (*,"('Enter mark (negative to terminate):')", advance="no")
        read *, mark
        if ( mark<0 ) stop
        select case (mark)
            case(70: )
                grade = 'A'
            case (60:69)
                grade = 'B'
            case (50:59)
                grade = 'C'
            case (40:49)
                grade = 'D'
            case (:39)
                grade = 'F'
        end select
        print *, "Grade is ", grade
    end do
end program gradeUsingSelectCase