
function quick_sort(array, start, count)

    local length = (count - (start - 1))

    if length < 2 then
        return array
    end

    local pivot = count;
    local i = start

    while (i < pivot) do

        if (array[i] >= array[pivot]) then
            local pivotNumber = array[pivot];
            local beforePivot = array[pivot - 1]
            array[pivot] = array[i]
            array[i] = beforePivot;
            array[pivot - 1] = pivotNumber
            pivot = pivot - 1;
        else
            i = i + 1
        end;
    end

    if (pivot > start) then
        array = quick_sort(array, start, pivot - 1)
    end

    if (pivot < count ) then
        quick_sort(array, pivot + 1, count)
    end

    return array

end

return function(scores)


    local HighScores = {}

    function HighScores.scores()
        return scores
    end

    function HighScores.latest()
        return scores[#scores]
    end

    function HighScores.personal_best()

        local highest = 0

        for index, score in pairs(scores) do

            if (score > highest) then
                highest = score
            end

        end

        return highest

    end

    function sort_scores(scores)

        local sortedScores = {}

        for i = 1, #scores do
            sortedScores[i] = scores[i]
        end

        quick_sort(sortedScores, 1, #sortedScores)

        return sortedScores

    end

    function HighScores.personal_top_three()

        local top_three = {}
        local sortedScores = {}

        for i = 1, #scores do
            sortedScores[i] = scores[i]
        end

        quick_sort(sortedScores, 1, #sortedScores)

        local i = 1;

        while (i <= 3 and i <= #sortedScores) do
            top_three[i] = sortedScores[#sortedScores + 1 - i]
            i = i + 1;
        end

        return top_three;

    end

    return HighScores

end
