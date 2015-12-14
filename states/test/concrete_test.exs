#defmodule ConcreteTest do
    #use to add a macro
#    use ExUnit.Case

#    test "should update count" do
 #       rented_video = VideoStore.renting(video)

  #      assert rented_video.times_rented == 1
#    end

 #   def video, do: %Video{title: "XMen"}

    #quote, internal representation of the code
    #quote do: 1 == 2

    #mix run
#end

defmodule ConcreteTest do
    #use to add a macro
    import Should
    use ExUnit.Case

    should "update count" do
        rented_video = VideoStore.renting(video)

        assert rented_video.times_rented == 1
    end

    def video, do: %Video{title: "XMen"}

    #quote, internal representation of the code
    #quote do: 1 == 2

    #mix run
end