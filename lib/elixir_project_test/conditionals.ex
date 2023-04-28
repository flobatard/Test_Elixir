defmodule Conditionals do

  def is_even?(n) do
    if rem(n, 2) == 0 do
      true
    else
      false
    end
  end

  def greeting(hour) do
    cond do
      hour < 12 ->
        IO.puts("Good morning")
      hour >=12 && hour < 17 ->
        IO.puts("Good afternoon")
      hour >= 17 and hour < 25->
        IO.puts("Good evening")
      true -> #Same as default in C/C++ switch cases
        IO.puts("Greetings!")
    end
  end

end
