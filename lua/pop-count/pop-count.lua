local PopCount = {}

function PopCount.findLargestPower(number)

    local i = 0;
    while 2^i < number do
        i = i + 1;
    end

    return i;

end

function PopCount.egg_count(number)

    totalDec = number
    local largestPower = PopCount.findLargestPower(totalDec)
    local totalEggs = 0;

    while largestPower >= 0 do

        if (2^largestPower <= totalDec) then
            totalDec = totalDec - 2^largestPower
            totalEggs = totalEggs + 1
        end

        largestPower = largestPower - 1

    end

    --- ug binary, right so 1, 2, 3, 4... find 2 to power,

    return totalEggs;
end

return PopCount
