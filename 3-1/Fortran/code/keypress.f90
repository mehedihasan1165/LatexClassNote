program keypress
    implicit none
    character letter
    print *, "Press a key"
    read *, letter
    select case (letter)
    case('A','E','I','O','U','a','e','i','o','u')
        print *,"Vowel!"
    case('B':'D','F':'H','J':'N','P':'T','V':'Z','b':'d','f':'h','j':'n',&
        'p':'t','v':'z')
        print *,"Consonant!"
    case('0':'9')
        print *,"Digit!"
    case default
        print *,"Symbol!"
    end select
end program keypress