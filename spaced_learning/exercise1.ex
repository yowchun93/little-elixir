defmodule Exercise1 do
  # [ [:a, :c , :e], [:b, :d, :e], [:c, :a , :t], [:d, :o, :g] ]
  def first([]) do
    []
  end

  def first([ [h|_] | t]) do
    [h | first(t) ]
  end

  # [:cat, :with, :hat, :lol]
  def rember(a, []) do
    []
  end

  # removing the found element from being recursed
  def rember(a, [a | t]) do
    rember(a, t)
  end

  def rember(a, [h|t]) do
    [h | rember(a, t)]
  end

end

Exercise1.first([ [:a, :c , :e], [:b, :d, :e], [:c, :a , :t], [:d, :o, :g] ]) |> IO.inspect
Exercise1.rember(:hat, [:cat, :with, :hat, :lol]) |> IO.inspect
