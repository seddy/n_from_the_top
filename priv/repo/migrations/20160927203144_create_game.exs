defmodule NFromTheTop.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :numbers, :string
      add :target, :integer

      timestamps()
    end

  end
end
