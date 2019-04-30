defmodule Firsts do

  # Third commandment, when building a list. Describe the typical element.
  # then cons it onto the natural recursion.

  # [ [a,b], [c,d], [e,f] ]
  # => [:a, :c , :e ]
  def first([]) do
    []
  end

  def first ([ [f |_ ] | t ]) do
    [f | first(t)]
  end
end

Firsts.first([ [:a, :b], [:c, :d], [:e, :f] ]) |> IO.inspect
