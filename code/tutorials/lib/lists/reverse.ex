defmodule Tutorials.Lists.Reverse do
  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t, [h | acc])
end
