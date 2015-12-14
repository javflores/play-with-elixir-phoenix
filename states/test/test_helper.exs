defmodule Should do
    defmacro should(name, options) do
        quote do
            test("should #{unquote name}", unquote(options))
        end
    end
end

#quote, this code tells the compiler: as you are building the abstract syntax tree
#for this program whenever you see the word should replace it with everything inside quoute do
#when we unquote we tell compiler, go one level up , add the value of name and options

ExUnit.start()
