defmodule Subtraction do

  # subtract(5,3)
  # (subtract(5,2) - 1)
  # (subtract(5,1) - 1 - 1)
  # (subtract(5,0) - 1 - 1 - 1)
  # (5 - 1 - 1 - 1)
  # 2

  def subtract(0,b) do
    b
  end

  def subtract(a,b) do
    subtract(a, b - 1) - 1
  end
end

Subtraction.subtract(5,3)
