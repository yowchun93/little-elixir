defmodule Sub do
  # def multisub(new, old []) do
  #   []
  # end

  # Let's try to recall what sub does.
  # sub(:cat, :dog, [:a, :lovely, :cat, :haha])
  def sub(_, _, []) do
    []
  end

  def sub(new, old , [old | t]) do
    [new | sub(new,old,t)]
  end

  def sub(new, old, [h|t]) do
    [h | sub(new, old, t)]
  end
end

Sub.sub(:dog, :cat, [:a, :lovely, :cat, :haha, :eats, :cat, :food]) |> IO.inspect
