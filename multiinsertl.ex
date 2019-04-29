

defmodule Insert do
  # insert to the left
  # insert(:banana, :cake, [:ice, :cream, :cake] ) => [:ice, :cream, :banana, :cake]

  def insertl(_, _, []) do
    []
  end

  # third commandment
  def insertl(new, old, [old | t]) do
    [new | [old | t]]
  end

  # second commandment, use cons to build the list
  def insertl(new, old, [h|t]) do
    [h | insertl(new, old, t)]
  end

  # insert multiple times to the left
  # insert(:banana, :cake, [:ice, :cream, :cake, :chocolate, :cake, :sweet, :cake])
  def multiinsertl(_, _ , []) do
    []
  end

  # In little schemer the example shows you getting stuck in the terminal as well LMAO.
  # Which leads us to the fourth commandment.
  # Always change at least one argument while recurring. It must be changes to be closer to termination.
  def multiinsertl(new, old, [old | t]) do
    [new, old | multiinsertl(new, old, t)]
  end

  def multiinsertl(new, old, [h|t]) do
    [h | multiinsertl(new, old, t)]
  end

end

# Insert.insertl(:banana, :cake, [:ice, :cream, :cake]) |> IO.inspect
Insert.multiinsertl(:banana, :cake, [:ice, :cream, :cake, :chocolate, :cake, :sweet, :cake]) |> IO.inspect
