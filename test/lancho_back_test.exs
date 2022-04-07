defmodule LanchoBackTest do
  use ExUnit.Case
  doctest LanchoBack

  test "greets the world" do
    assert LanchoBack.hello() == :world
  end
end
