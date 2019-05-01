# Natural terminal condition for number => 0
# Natural recursion on a number sub(n-1)

# First commandment for numbers recursion,
# zero?
# else

# (define addtup
#  (lambda (l)
#    (cond
#      ((null? l) 0)
#      (else
#        (+ (car l) (addtup (cdr l)))))))
defmodule Tup do
  # build number by totalling number in a tup
  # list = [1,2,3,4,5] => 15
  def addtup([]) do
    0
  end

  # (+ (car l) (addtup (cdr l))
  def addtup([h|t]) do
    h + addtup(t)
  end

  # tup1 [3,6,9,11,4], tup2 [8,5,2,0,7]
  # plan is to keep reducing tup2
  def combineTup([], []) do
    []
  end

  # def combineTup(t1, []), do: t1

  # def combineTup([], t2), do: t2

  def combineTup([h1|t1], [h2|t2]) do
    # IO.inspect(h1)
    # IO.inspect(t2)
    [h1 + h2 | combineTup(t1,t2)]
  end

end

# Tup.addtup([1,2,3,4,5])

Tup.combineTup([3,7], [4,6]) |> IO.inspect
# Tup.addtup([3,7], [4,6]) |> IO.inspect
