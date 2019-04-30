defmodule Multi do

  # multiply(5,3)
  # 5 + multiply(5,2)
  # 5 + 5 + multiply(5,1)
  # 5 + 5 + 5 + 0
  def multiply(_, 0) do
    0
  end

  def multiply(a, b) do
    a + multiply(a, b - 1)
  end
end

Multi.multiply(5,3) |> IO.inspect
