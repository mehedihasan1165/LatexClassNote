program gradeUsingIf
    implicit none
    integer mark
    character grade
    do
        write (*,"('Enter mark (negative to terminate):')", advance="no")
        read *, mark
        if ( mark < 0 ) stop
        if ( mark >= 70 ) then
            grade = 'A'
        else if ( mark >= 60 ) then
            grade = 'B'
        else if ( mark >= 50 ) then
            grade = 'C'
        else if ( mark >= 40 ) then
            grade = 'D'
        else 
            grade = 'F'
        end if
        print *, "Grade is ", grade
    end do
end program gradeUsingIf