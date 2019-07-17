defmodule PushoverTest do
  use ExUnit.Case
  doctest Pushover

  test "greets the world" do
    assert Pushover.hello() == :world
  end
end
