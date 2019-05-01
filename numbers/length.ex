defmodule Length do
  def count_length(list) do
    length(0, list)
  end

  def length(a, []) do
    a
  end

  def length(a, [_|t]) do
    length(a + 1, t)
  end

end

Length.count_length([:a, :b, :c]) |> IO.inspect
