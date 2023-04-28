defmodule CaseStatement do


  #Function already exist Map.has_key?
  #Pb doesn't work for {a: nil}
  def has_key?(map, key) do
    case Map.get(map, key) do
      nil ->
        false
      value ->
        true
    end
  end

  def better_has_key?(map, key, :none) do
    case Map.get(map, key) do
      :none ->
        false
      _value ->
        true
    end
  end
end

CaseStatement.has_key?(%{}, :a)
CaseStatement.has_key?(%{a: 1}, :a)
