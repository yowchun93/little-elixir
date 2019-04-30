defmodule Rember do
  def rember?(_, []) do
    []
  end
  # if the member matches
  def rember?(n, [n|t]) do
    t
  end

  def rember?(n, [h|t]) do
    [h | rember?(n,t)]
  end
end

# Rember.rember?(:bacon, [:bacon, :lettuce, :cucumber]) |> IO.inspect

Rember.rember?(:and, [:bacon, :lettuce, :and ,:cucumber]) |> IO.inspect
