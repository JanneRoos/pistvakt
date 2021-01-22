defmodule Pistvakt.Repo.Migrations.CreateQuote do
  use Ecto.Migration

  def change do
    create table(:quotes) do
      add :quote, :string
      add :name, :string
      add :season, :integer
      add :episode, :integer
    end
  end
end
