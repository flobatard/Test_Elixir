#Special type type of maps, only use atoms as keys
#Need a special key
#Gives guarantee
defmodule ElixirProjectTest.Structure do

  @enforce_keys [:first_name, :last_name] #Force keys to exists
  defstruct [:first_name, :last_name]

  def greeting(%ElixirProjectTest.Structure{first_name: struct_first_name, last_name: struct_last_name}) do
    IO.puts("Hello #{struct_first_name} #{struct_last_name}!!")
  end
end
