#  This is quite hard for me to understand
defmodule Pick do
  def pick(1, [h|_]) do
    h
  end

  # 4, [:cat, :dog, :monkey, :bird] -> :bird
  def pick(a, [_|t]) do
    pick(a-1, t)
  end

  # pick(3, [:dog, :monkey, :bird])
  # pick(2, [:monkey, :bird])
  # pick(1, [:bird])

  def rempick(1, [h|t]) do
    [h]
  end

  def rempick(a, [h|t]) do
    [ h | rempick(a-1, t) ]
  end

end

# Pick.pick(4, [:cat, :dog, :monkey, :bird]) |> IO.inspect
Pick.rempick(3, [:cat, :dog, :monkey, :bird]) |> IO.inspect
