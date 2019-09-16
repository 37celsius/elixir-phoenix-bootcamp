defmodule Splitting do
  def input_to_split(value) do

    value
    |> String.downcase(value)
    |> String.split(",")
    |> Enum.uniq
    
  end
end