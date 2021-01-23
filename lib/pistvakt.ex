defmodule Pistvakt do
  @moduledoc """
  Documentation for `Pistvakt`.
  """

  alias Pistvakt.Repo
  alias Pistvakt.Quote

  import Ecto.Query

  @doc """
  Hello world.

  ## Examples

      iex> Pistvakt.hello()
      :world

  """
  def hello do
    :world
  end

  def get_random_quote() do
    query =
      from Quote,
      order_by: fragment("RANDOM()"),
      limit: 1

    [%Quote{quote: qte, name: name}] = Repo.all(query)
    IO.puts("\n\"#{qte}\"\n- #{name}")    
  end
end
