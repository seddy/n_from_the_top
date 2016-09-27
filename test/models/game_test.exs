defmodule NFromTheTop.GameTest do
  use NFromTheTop.ModelCase

  alias NFromTheTop.Game

  @valid_attrs %{numbers: "some content", target: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Game.changeset(%Game{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Game.changeset(%Game{}, @invalid_attrs)
    refute changeset.valid?
  end
end
