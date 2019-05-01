defmodule LessThan do


  def less_than(0, _) do
    true
  end

  def less_than(_, 0) do
    false
  end

  def less_than(a,b) do
    less_than(a-1, b-1)
  end
end

LessThan.less_than(2,3) |> IO.inspect
