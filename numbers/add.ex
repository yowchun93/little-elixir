defmodule Addition do

  # add(5,6)
  # cons builds list, but add builds number

  # (1 + add(4, 6))
  # (1 + 1 + add(3,6))
  # (1 + 1 + 1 + add(2,6))
  # (1 + 1 + 1 + 1 + add(1,6))
  # (1 + 1 + 1 + 1 + 1 + add(0,6))
  # (1 + 1 + 1 + 1 + 1 + 6)

  def add(0, b) do
    b
  end

  def add(a, b) do
    1 + add(a - 1, b)
  end

end

Addition.add(5,6) |> IO.inspect
