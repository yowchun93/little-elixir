defmodule Multi do

  @moduledoc """
    The Fifth Commandment: When building a value with +, always use 0
    for the value of the terminating line, for adding 0 does not change
    the value of an addition.

    When building a value with *, always use 1 for the value of the terminating
    line, for multiplying by 1 does not change the value of a multiplication.

    When building a value with cons, always consider '() for the value of the
  """

  @moduledoc """
    (define *
      (lambda (n m)
        (cond
          ((zero? m) 0)
          (else
            (+ n (* n (sub1 m)))))))
  """
  # (zero? m) 0)
  def multiply(_, 0) do
    0
  end

  # (+ n (* n (sub1 m)))
  def multiply(a, b) do
    a + multiply(a, b - 1)
  end
end


# multiply(5,3)
# 5 + multiply(5,2)
# 5 + 5 + multiply(5,1)
# 5 + 5 + 5 + 0
Multi.multiply(5,3) |> IO.inspect
