defmodule NFromTheTop.Game do
  use NFromTheTop.Web, :model

  schema "games" do
    field :numbers, :string
    field :target, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:numbers, :target])
    |> validate_required([:numbers, :target])
  end
end
