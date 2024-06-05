"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
    if mod(year, 400) == 0 || (mod(year, 4) == 0 && mod(year, 100) != 0)
        return true
    else
        return false
    end
end
