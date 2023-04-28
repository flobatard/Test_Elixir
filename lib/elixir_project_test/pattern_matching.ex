defmodule PatternMatching do

  def factorial_without(n) do
    if n <= 1 do
      1
    else
      n * factorial(n - 1)
    end
  end

  def factorial(0), do: 1

  def factorial(n) when n > 0, do: n*factorial(n-1)

  def fibo_aux(0), do: {0, 0}

  def fibo_aux(1), do: {0, 0}

  def fibo_aux(2), do: {1, 0}

  def fibo_aux(n) when n>2 do
    previous = fibo_aux(n-1)
    {elem(previous, 0) + elem(previous, 1), elem(previous, 0)}
  end

  def fibo(1), do: 1

  def fibo(n) when n>=0 do
    previous = fibo_aux(n)
    elem(previous, 0) + elem(previous, 1)
  end

  def pattern_on_object() do
    person = %{name: "Florian", age: 25}
    IO.puts(person.age)
    %{age: person_age} = person
    IO.puts(person_age)
    %{name: person_name} = person
    IO.puts(person_name)
  end

  def print_list([]), do: IO.puts(" end")

  def print_list([head | tail]) do
    IO.puts(" #{head} ")
    print_list(tail)
  end

end
