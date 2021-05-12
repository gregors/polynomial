defmodule Polynomial do
  @moduledoc """
  Documentation for `Polynomial`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Polynomial.hello()
      :world

  """
  def hello do
    :world
  end

  def new, do: []
  def new([]), do: []
  def new(pn), do: pn

  def to_string(pn) do
    vars = (0..length(pn))
            |> Enum.map(fn
              0 -> ""
              1 -> "x"
              x -> "x^#{x}"
            end)

    pn
    |> Enum.zip(vars)
    |> Enum.map(fn {co, var} -> "#{co}#{var}" end)
    |> Enum.join(" + ")
  end
end
