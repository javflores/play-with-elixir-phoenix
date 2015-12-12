##To execute this file navigate to the folder location and run iex geometry.exs
defmodule Play.Rectangle do
    def area({h, w}), do: h * w
    def perimeter({h, w}) do
        2 * (h + w)
    end
end

defmodule Play.Square do
    def area({w}), do:
        Play.Rectangle.area({w, w})
    def area({w, h}) when w == h do
        Play.Rectangle.area({w, w})
    end
    def perimeter({w}) do
        Play.Rectangle.perimeter({w, w})
    end
    def perimeter({w, h}) when w == h do
        Play.Rectangle.perimeter({w, w})
    end
end

r = {3, 4}
IO.puts "The area of rectangle #{inspect r} is #{Play.Rectangle.area r}"

s = {4}
IO.puts "The area of square #{inspect s} is #{Play.Square.area s}"