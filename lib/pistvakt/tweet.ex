defmodule Pistvakt.Tweet do
  use Ecto.Schema

  schema "tweets" do
    field :tweet_id, :integer
    field :quote_id, :integer

    timestamps()
  end
end
