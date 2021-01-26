defmodule Pistvakt.Seeds.Seeder do
  alias Pistvakt.Seeds

  def seed do
    Seeds.QuoteSeeder.seed
    Seeds.TweetSeeder.seed
  end
end
