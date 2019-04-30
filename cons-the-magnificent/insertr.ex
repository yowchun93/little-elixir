defmodule InsertR do

  # list = [:ice, :cream, :with, :fudge, :for, :dessert]
  # insertR(topping, fudge, list)
  def insertR(_, _, []) do
    []
  end

  def insertR(new, old, [old | t] ) do
    [old | [new | t] ]
  end

  def insertR(new, old, [h | t ]) do
    [h | insertR(new, old, t)]
  end

end

#  [ :ice | [:cream | [:with | [:fudge | [:topping | [:for, :dessert]] ]]]
InsertR.insertR(:topping, :fudge, [:ice, :cream, :with, :fudge, :for, :dessert]) |> IO.inspect
