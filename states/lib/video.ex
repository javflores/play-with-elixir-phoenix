defmodule Video do
    defstruct title: "", state: :available, times_rented: 0, log: []
end

#Creating a struct: vid = %Video{title: "The Wolverine"}