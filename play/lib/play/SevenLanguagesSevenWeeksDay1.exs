defmodule FirstExercise do
    def csize([]), do: 0
    def csize([_|tail]), do: 1 + csize(tail)

    def cmin([], min), do: min
    def cmin([head|tail], min) do
        if(head < min) do cmin(tail, head) else cmin(tail, min) end
    end
    def cmin([head|tail]), do: cmin(tail, head)

    def cmax([head|tail]), do: cmax(tail, head)
    def cmax([head|tail], max) do
        if(head > max) do cmax(tail, head) else cmax(tail, max) end
    end
    def cmax([], max), do: max
end

IO.inspect FirstExercise.csize([5, 2, 1, 8, 3])
IO.inspect FirstExercise.cmin([5, 2, 1, 8, 3])
IO.inspect FirstExercise.cmax([5, 2, 1, 8, 3])

defmodule SecondExercise do
    def word_count(list) do
        Enum.reduce(list, [], &(Keyword.put(&2, &1, 1 + Keyword.get(&2, &1, 0))))
    end
end

IO.inspect SecondExercise.word_count([:one, :two, :one, :one, :one, :two])
#[one: 1, two: 2]