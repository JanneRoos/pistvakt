defmodule Pistvakt.Quote do
  use Ecto.Schema

  schema "quotes" do
    field :quote, :string
    field :name, :string
    field :season, :integer
    field :episode, :integer
  end

  def changeset(quote, params \\ %{}) do
    quote
    |> Ecto.Changeset.cast(params, [:name, :quote, :season, :episode])
    |> Ecto.Changeset.validate_required([:name, :quote])
  end
end
