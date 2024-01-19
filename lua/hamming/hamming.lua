local Hamming = {}

function Hamming.compute(a, b)

    local lenA <const>  = a:len()
    local lenB <const>  = b:len()

    if (lenA ~= lenB) then
        return -1
    end

    local index = lenA
    local hamming = 0;

    while (index >= 1) do

        charA = a:sub(index, index)
        charB = b:sub(index, index)

        if (charA ~= charB) then
            hamming = hamming + 1;
        end
        index = index - 1;

    end

    return hamming

end

return Hamming
