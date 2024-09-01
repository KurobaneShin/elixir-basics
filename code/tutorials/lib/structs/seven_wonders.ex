defmodule Tutorials.Structs.SevenWonders do
  defstruct name: "", country: ""
  alias Tutorials.Structs.SevenWonders

  @type t :: %SevenWonders{
          name: String.t(),
          country: String.t()
        }

  @spec all() :: list(SevenWonders)
  def all() do
    [
      %SevenWonders{name: "muralha da china", country: "china"},
      %SevenWonders{name: "cristo redentor", country: "brasil"}
    ]
  end

  def print_names() do
    all()
    |> Enum.each(fn %{name: name} -> IO.puts(name) end)
  end

  # function print_names{
  #  return wonders.forEach(({name}) => console.log(name))
  # }

  def filter_by_country(arg) do
    all()
    |> Enum.filter(fn %{country: country} -> country == arg end)
  end

  def country_starts_with(char) do
    all()
    |> Enum.filter(fn
      %{country: c} ->
        c
        |> String.starts_with?(char)
    end)
  end

  def sort_by_country_len() do
    all()
    |> Enum.sort(fn
      x, y -> String.length(x.country) < String.length(y.country)
    end)
  end
end
