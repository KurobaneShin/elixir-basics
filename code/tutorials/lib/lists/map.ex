defmodule Tutorials.Lists.Map do
  def map(elements, func, acc \\ [])
  def map([], _, acc), do: acc
  def map([h | t], func, acc), do: map(t, func, [func.(h) | acc])
end
