defmodule Sub do
  def sub(_, _ , []) do
    []
  end

  def sub(new, old, [old|t]) do
    [new | t]
  end

  def sub(new, old, [h|t]) do
    [h | sub(new, old, t)]
  end
end

Sub.sub(:topping, :fudge, [:ice, :cream, :with, :fudge, :for, :dessert]) |> IO.inspect

