defmodule InsertL do

  # list = [:ice, :cream, :with, :fudge, :for, :dessert]
  # insertR(topping, fudge, list)
  def insertL(_, _, []) do
    []
  end

  # def insertL(new, old, [old | t] ) do
  #   [new | [old | t] ]
  # end

  def insertL(new, old , list=[ old | _ ] ) do
    [new | list]
  end

  def insertL(new, old, [h | t ]) do
    [h | insertL(new, old, t)]
  end

end

InsertL.insertL(:topping, :fudge, [:ice, :cream, :with, :fudge, :for, :dessert]) |> IO.inspect
