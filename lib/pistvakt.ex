defmodule Pistvakt do
  @moduledoc """
  Documentation for `Pistvakt`.
  """

  alias Pistvakt.Repo
  alias Pistvakt.Quote
  alias Pistvakt.Management.QuoteManagement

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
    %Quote{quote: qte, name: name} =
      QuoteManagement.list_quotes()
      |> Enum.random()

    IO.puts("\n\"#{qte}\"\n- #{name}")    
  end
end
