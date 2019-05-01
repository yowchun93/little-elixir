defmodule GreaterThan do

  # greater_than(5, 3) => true
  # greater_than(3, 5) => false
  def greater_than(a,0) do
    true
  end

  def greater_than(0,b)  do
    false
  end

  def greater_than(a,b) do
    greater_than(a-1, b-1)
  end

end

GreaterThan.greater_than(5,3) |> IO.inspect
GreaterThan.greater_than(3,5) |> IO.inspect
