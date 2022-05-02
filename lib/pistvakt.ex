defmodule Pistvakt do
  @moduledoc """
  Documentation for `Pistvakt`.
  """

  alias Pistvakt.Quote
  alias Pistvakt.Tweet
  alias Pistvakt.Management.QuoteManagement
  alias Pistvakt.Management.TweetManagement

  def get_random_quote() do
    QuoteManagement.list_quotes()
    |> Enum.random()
  end

  def get_random_quote_except(quote_id) do
    qte = get_random_quote()

    if qte.id == quote_id do
      get_random_quote_except(quote_id)
    else
      qte
    end
  end

  def print_quote(%Quote{quote: qte, name: name}) do
    IO.puts("\n\"#{qte}\"\n- #{name}")
  end

  def print_random_quote() do
    get_random_quote()
    |> print_quote()
  end

  def print_random_quote_except_last() do
    %Tweet{quote_id: last_id} = TweetManagement.get_last_tweet()

    get_random_quote_except(last_id)
    |> print_quote()
  end
end
