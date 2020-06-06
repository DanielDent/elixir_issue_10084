defmodule ElixirIssue10084Test do
  use ExUnit.Case
  doctest ElixirIssue10084

  test "greets the world" do
    assert ElixirIssue10084.hello() == :world
  end
end
