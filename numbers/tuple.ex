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

  def addtup([h|t]) do
    h + addtup(t)
  end
end

Tup.addtup([1,2,3,4,5]) |> IO.inspect
