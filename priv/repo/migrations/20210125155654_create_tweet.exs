defmodule Pistvakt.Repo.Migrations.CreateTweet do
  use Ecto.Migration

  def change do
    create table(:tweets) do
      add :tweet_id, :integer
      add :quote_id, :integer

      timestamps()
    end
  end
end
