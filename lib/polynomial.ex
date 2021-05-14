defmodule Polynomial do
  @moduledoc """
  Documentation for `Polynomial`.
  """

  def new, do: []
  def new([]), do: []
  def new(pn), do: pn


  def add(pa, pb, state \\ [])

  def add([], [], state), do: Enum.reverse(state)

  def add([a | pa], [b | pb], state) do
    add(pa, pb, [ a + b | state])
  end

  def add([], [b | pb], state) do
    add([], pb, [b | state])
  end

  def add([a | pa], [], state) do
    add(pa, [], [a | state])
  end


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
