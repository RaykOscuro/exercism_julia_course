"""
    rotate(amount,input)

Return rotational cypher of `input`, rotated by `amount`.

"""
function rotate(amount, input)
    output = ""
    for c in input
        if isletter(c)
            islc = (c == lowercase(c))
            c = lowercase(c) - 'a' + 1
            c = mod(c + amount - 1, 26) + 'a'
            output *= islc ? Char(c) : uppercase(Char(c))
        else
            output *= c
        end
    end
    if (length(output) == 1) && (input == input[1])
        return output[1]
    else
        return output
    end
end

for shift in 0:26
    macro_name = Symbol("R" * string(shift) * "_str")
    eval(quote(macro $macro_name(p) rotate($shift, p) end) end)
end