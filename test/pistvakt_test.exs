defmodule PistvaktTest do
  use ExUnit.Case
  doctest Pistvakt

  test "greets the world" do
    assert Pistvakt.hello() == :world
  end
end
