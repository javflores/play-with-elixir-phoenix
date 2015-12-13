defmodule QuickSort do
    def sort([]), do: []
    def sort([head|tail]) do
        IO.inspect ([head|tail])
        sort( for(x <- tail, x <= head, do: x) ) ++
        [head] ++
        sort( for(x <- tail, x > head, do: x) )
    end
end

IO.inspect QuickSort.sort([5, 6, 3, 2, 7, 8])

#[5, 6, 3, 2, 7, 8]:
#[5, 6, 3, 2, 7, 8]:
