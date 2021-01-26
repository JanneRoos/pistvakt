defmodule Pistvakt.Seeds.QuoteSeeder do
  
  alias Pistvakt.Management
  alias Pistvakt.Seeder
  
  def seed do
    quotes = [
      %{
        quote: "Fjöl av",
        name: "Sven-E"
      },

      %{
        quote: "Ett tag var det spännande",
        name: "Jan-E"
      },

      %{
        quote: "Jag tog vägen genom schkogn!",
        name: "Olle"
      }
    ]

    Seeder.seed(quotes, &Management.QuoteManagement.create_quote/1)
  end
end
