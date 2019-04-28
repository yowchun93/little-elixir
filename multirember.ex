# def rember(a, []) do
#   []
# end

# def rember(a, [a | t]) do
#   t
# end

# def rember(a, [h | t]) do
#   [h | multirember(a, t)]
# end


# (define multirember
# (lambda (a lat)
#   (cond
#     ((null? lat) '())
#     ((eq? (car lat) a)
#      (multirember a (cdr lat)))
#     (else
#       (cons (car lat)
#             (multirember a (cdr lat)))))))

defmodule MultiRember do
  def multirember(a, []) do
    []
  end

  # i think here instead of returning the whole thing, you keep on doing it?
  def multirember(a, [a | t]) do
    multirember(a, t)
  end

  def multirember(a, [h | t]) do
    [h | multirember(a, t)]
  end
end

# [:coffee | [:cup | [:tea | [:and | [:hick | [:cup ]]]]]
MultiRember.multirember(:cup, [:coffee, :cup, :tea, :cup, :and, :hick, :cup] ) |> IO.inspect
# it works for list with only one element as well
MultiRember.multirember(:cup, [:coffee, :cup, :tea, :and, :hick]) |> IO.inspect
