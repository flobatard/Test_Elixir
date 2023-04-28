defmodule MapsTest do
  def syntaxs() do
    map = %{a: "Coucou1"}
    map2 = %{:a=> "Coucou2"} #Atom form
    map3 = %{"a"=> "Coucou3"} #Key form
    Map.put(map, :e, "Hello")
    Map.put_new(map2, :c, "Hello") #Only put if actually new (will NOT raise error otherwise)
    %{} = map3 #Will work %{} pattern match any map
  end

end
