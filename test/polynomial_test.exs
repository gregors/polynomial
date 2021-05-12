defmodule PolynomialTest do
  use ExUnit.Case
  doctest Polynomial

  test ".new" do
    assert Polynomial.new() == []
  end

  test ".new with zero" do
    assert Polynomial.new([]) == []
  end

  test ".to_string prints out representation" do
    pn = Polynomial.new([1, 2, 3])
    assert Polynomial.to_string(pn) == "1 + 2x + 3x^2"
  end

  test ".add adds polynomials together" do
    pa = Polynomial.new([1, 2, 3])
    pb = Polynomial.new([1, 2, 3])
    pc = Polynomial.add(pa, pb)
    assert Polynomial.to_string(pn) == "2 + 4x + 6x^2"
  end
end
