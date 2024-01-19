local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)

    local asString = "" .. number
    local digits = asString:len()
    local index = 1
    local result = 0;

    while (index <= digits) do
        local digit = asString:sub(index, index)
        result = result + digit ^ digits
        index = index + 1
    end

    return result == tonumber(number)

end

return ArmstrongNumbers
