defmodule Power do

  # power(2,3) => 8
  def power(a, 1) do
    a
  end

  def power(a, b) do
    a * power(a, b-1)
  end
end

Power.power(2,3) |> IO.inspect
