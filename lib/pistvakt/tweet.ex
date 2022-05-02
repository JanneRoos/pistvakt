defmodule Pistvakt.Tweet do
  @moduledoc """
  Model for tweets
  """
  use Ecto.Schema

  schema "tweets" do
    field :tweet_id, :integer
    field :quote_id, :integer

    timestamps()
  end

  def changeset(tweet, params \\ %{}) do
    tweet
    |> Ecto.Changeset.cast(params, [:tweet_id, :quote_id])
    |> Ecto.Changeset.validate_required([:tweet_id, :quote_id])
  end
end
