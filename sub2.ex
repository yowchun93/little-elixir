# IN Scheme
# (define subst2
# (lambda (new o1 o2 s)
#   (cond
#     ((null? s) '())
#     ((or (eq? (car s) o1)
#          (eq? (car s) o2))
#      (cons new (cdr s)))
#     (else
#       (cons (car s)
#             (subst2 new o1 o2 (cdr s)))))))
defmodule Sub2 do
  def sub2(_, _, _, []) do
    []
  end

  def sub2(new, o1, _, [o1|t]) do
    [new | t]
  end

  def sub2(new, _, o2, [o2|t]) do
    [new | t]
  end

  def sub2(new, o1, o2, [h|t]) do
    [h | sub2(new, o1, o2 ,t)]
  end
end

Sub2.sub2(:vanilla, :chocolate, :banana, [:banana, :ice, :cream, :with, :chocolate, :topping]) |> IO.inspect
#  [:vanilla, :ice, :cream, :with, :chocolate, :topping ]

# you need to get the first occurance / second occurance.
