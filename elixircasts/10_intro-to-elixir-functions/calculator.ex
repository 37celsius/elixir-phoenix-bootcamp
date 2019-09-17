defmodule Calculator do

  # Elixir also have anonymous function
  # squared = fn(x) -> x * x end

  # to call anonymouse function, use dot
  # squared.(4)

  # Elixir have helper guard clausers
  # below function have guard clause that prevent negative number as a result
  def subtract(x,y) when x >= y do
    do_subtract(x,y)
  end

  def subtract(x,y) when x < y do
    "x must be greater than y"
  end

  # This is a private function that can only be call within this module
  defp do_subtract(x,y) do
    x - y
  end

  def squared(x) do
    x * x
  end

  def product_of(x, y) do
    x * y
  end

  def sum_of(x,y) do
    x + y
  end
end