##To execute this file navigate to the folder location and run iex Lists.exs
defmodule ListExample do
    def print([]), do: :ok
    def print([head|tail]) do
        IO.puts head
        print tail
    end
    def printNoRecursion(list), do: Enum.each(list, &(
        IO.puts &1))
end

list = [:storm, :sabretooth, :mystique]
ListExample.print(list)
##Same than above but using pattern Enum library to traverse the list
Enum.each list, &(IO.puts &1)
ListExample.printNoRecursion(list)

##Other useful functions
filter = Enum.filter [1, 2, 3], &(&1 > 1)
IO.puts "You can filter lists like Enum.filter [1, 2, 3], &(&1 > 1) = #{inspect filter}"
IO.puts "You can reduce lists like Enum.reduce [1, 2, 3], &(&1 + &2) = #{Enum.reduce [1, 2, 3], &(&1 + &2)}"
IO.puts Enum.any? [1, 2, 3], &(&1 > 1)
IO.puts Enum.all? [1, 2, 3], &(&1 > 1)
zipping = Enum.zip [1,2,3], [1,2,3]
IO.puts "You can zip lists like Enum.zip [1,2,3], [1,2,3] = #{inspect zipping}"


##you’ll often want to do multiple transformations at once, such as a filter and a map.
##Elixir has a tool to do just that: the "for comprehension".