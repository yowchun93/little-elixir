defmodule Insert do
  # insert to the right
  # insert(:banana, :cream, [:ice, :cream, :cake] ) => [:ice, :cream, :banana, :cake]

  # first commandment
  def insertr(_, _, []) do
    []
  end

  def insertr(new, old, [old | t]) do
    [old |  [new | t] ]
  end

  def insertr(new, old, [h|t]) do
    [h | insertr(new, old, t) ]
  end

  # multiInsertR
  # inserting multiple times to the right of occurance
  # multiinsertr(:banana, :cream, [:ice, :cream, :cake, :chocolate, :cream, :cake ] ) => [:ice, :cream, :banana, :cake, :chocolate, :cream, :banana, :cake]
  def multiinsertr(_, _, []) do
    []
  end

  ## you want the list to keep recursing, instead of stopping and returning a value like insertr
  def multiinsertr(new, old, [old | t]) do
    [old |  multiinsertr(new, old, [new | t]) ]
  end

  def multiinsertr(new, old, [h|t]) do
    [h | insertr(new, old, t) ]
  end

end

# Insert.insertr(:banana, :cream, [:ice, :cream, :cake]) |> IO.inspect
Insert.multiinsertr(:banana, :cream, [:ice, :cream, :cake, :chocolate, :cream, :cake ]) |> IO.inspect
