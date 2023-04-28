defmodule ElixirProjectTestTest do
  use ExUnit.Case
  doctest ElixirProjectTest

  test "greets the world" do
    assert ElixirProjectTest.hello() == :world
  end
end
