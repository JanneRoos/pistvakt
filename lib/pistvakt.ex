defmodule Pistvakt do
  @moduledoc """
  Documentation for `Pistvakt`.
  """

  alias Pistvakt.Quote
  alias Pistvakt.Management.QuoteManagement

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
    QuoteManagement.list_quotes()
    |> Enum.random()
  end

  def print_quote(%Quote{quote: qte, name: name}) do
    IO.puts("\n\"#{qte}\"\n- #{name}")
  end

  def print_random_quote() do
    get_random_quote()
    |> print_quote()
  end
end
