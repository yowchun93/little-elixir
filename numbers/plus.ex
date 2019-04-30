defmodule Addition do

  def zero?(n=0) do
    true
  end

  def zero?(_) do
    false
  end

end

Addition.zero?(0) |> IO.inspect
