defmodule Tutorials.Lists.Sum do
  def sum(nums), do: sum_tail_rec(nums)

  @spec sum_simple(list(number())) :: number()
  def sum_simple([]) do
    0
  end

  def sum_simple([h | t]) do
    h + sum_simple(t)
  end

  @spec sum_tail_rec(list(number()), integer()) :: number()
  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc

  def sum_tail_rec([h | t], acc) do
    sum_tail_rec(t, acc + h)
  end
end
