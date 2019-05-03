defmodule Occur do
  # First commandment, when counting list return 0
  # When building list, return []
  def occur(a, []) do
    0
  end

  def occur(a, [a|t]) do
    1 + occur(a, t)
  end

  def occur(a, [_|t]) do
    occur(a, t)
  end
end

# Occur.occur(:cat, [:dog, :and, :cat]) |> IO.inspect
Occur.occur(:cat, [:cute, :cat, :and, :cute ,:cat]) |> IO.inspect

# occur(:cat, [:dog, :and, :cat, :cute, :cat])
# occur(:cat, [:and,:cat,:cute,:cat])
# occur(:cat, [:cat,:cute,:cat])
# 1 + occur(:cat, [:cute,:cat])
# 1 + occur(:cat, [:cat])
# 1 + 1 + occur(:cat, [])
# 1 + 1 + 0

