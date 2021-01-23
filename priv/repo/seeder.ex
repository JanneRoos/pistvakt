defmodule Pistvakt.Seeds.Seeder do
  alias Pistvakt.Seeds

  def seed do
    Seeds.QuoteSeeder.seed
  end
end
