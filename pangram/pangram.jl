"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    return length(unique(lowercase(filter(isletter, input)))) == 26
end

